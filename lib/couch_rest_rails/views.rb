module CouchRestRails
  module Views
    extend self

    # Push views to couchdb
    def push(database, design_doc)
      puts "database = #{database} :: design_doc = #{design_doc}"
      result = []

      db_dir = File.join(RAILS_ROOT, CouchRestRails.setup_path, database)
      return "Database directory '#{database}' does not exist" unless (database == "*" || File.exist?(db_dir))

      Dir[db_dir].each do |db|
        return "Views directory '#{db}/views' does not exist"  unless File.exist?("#{db}/views")

        # CouchDB checks
        db_name = COUCHDB_CONFIG[:db_prefix] + File.basename(db) + COUCHDB_CONFIG[:db_suffix]
        begin
          CouchRest.get("#{COUCHDB_CONFIG[:host_path]}/#{db_name}")
        rescue => err
          return "CouchDB database '#{db_name}' does not exist. Create it first. (#{err})"
        end

        db_con = CouchRest.database("#{COUCHDB_CONFIG[:host_path]}/#{db_name}")
        Dir.glob(File.join(db, "views", design_doc)).each do |doc|
          design_doc_name = File.basename(doc)

          # Load views from filesystem & couchdb
          views = assemble_views(doc)
          couchdb_design = db_con.get("_design/#{design_doc_name}") rescue nil

          # Update couchdb's freshly-fetched views...
          views = couchdb_design['views'].merge(views) unless couchdb_design.nil?

          if views.empty?
            result << "No updatable views in #{doc}/#{File.basename(doc)}"
          else
            rev = couchdb_design.nil? ? {} : { '_rev' => couchdb_design['_rev'] }
            id  = "_design/#{design_doc_name}"
            db_con.save_doc({
                              '_id'      => id,
                              'language' => 'javascript',
                              'views'    => views
                            }.merge(rev))
            result << "Added views to #{id}: #{views.keys.join(', ')}"
          end
        end

        return "No views were found in '#{File.join(db, "views", design_doc)}'" if result.empty?
        return "#{result.join("\n")}"
      end
    end

    # Assemble views from file-system path design_doc_path
    def assemble_views(design_doc_path)
      views = {}

      Dir.glob(File.join(design_doc_path, '*')).each do |view_folder|
        view = {}
        map_file    = File.join(view_folder, 'map.js')
        reduce_file = File.join(view_folder, 'reduce.js')

        view[:map]    = IO.read(map_file)    if File.exist?(map_file)
        view[:reduce] = IO.read(reduce_file) if File.exist?(reduce_file) && File.size(reduce_file) > 0
        views[File.basename(view_folder)] = view if view[:map]
      end
      views
    end
  end
end

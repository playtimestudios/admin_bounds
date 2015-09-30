namespace :admin_bounds do
  desc 'Import administrative boundaries'
  task :import_administrative_boundaries, [:file] => :environment do |task, args|
    osmosis = AdminBounds::Osmosis.new(args.file)
    osmosis.import_administrative_boundaries
  end
end

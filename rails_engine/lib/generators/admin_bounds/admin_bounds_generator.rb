require 'rails/generators'
require 'rails/generators/actions'
require 'rails/generators/active_record'

module AdminBounds
  module Generators
    class AdminBoundsGenerator < ActiveRecord::Generators::Base
      namespace 'admin_bounds'
      source_root File.expand_path('../templates', __FILE__)
      desc 'Generates a model with a given NAME'

      def copy_migration
        migration_template 'migration.rb', "db/migrate/create_#{table_name}.rb"
      end
    end
  end
end

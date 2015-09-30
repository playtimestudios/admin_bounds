require 'spec_helper'
require 'generators/admin_bounds/admin_bounds_generator'

module AdminBounds
  module Generators
    describe AdminBoundsGenerator, type: :generator do
      destination File.expand_path('../../tmp', __FILE__)

      before do
        prepare_destination
      end

      it 'creates a migration', focus: true do
        run_generator %w(admin_bound)
        assert_migration 'db/migrate/create_admin_bounds', /def change/
      end
    end
  end
end

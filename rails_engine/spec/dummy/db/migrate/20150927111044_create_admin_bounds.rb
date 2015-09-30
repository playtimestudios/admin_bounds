class CreateAdminBounds < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        execute <<-SQL
          CREATE SCHEMA IF NOT EXISTS admin_bounds;
          CREATE EXTENSION IF NOT EXISTS postgis SCHEMA admin_bounds;
          CREATE EXTENSION IF NOT EXISTS hstore SCHEMA admin_bounds;
        SQL
      end

      dir.down do
        execute <<-SQL
          DROP SCHEMA admin_bounds;
        SQL
      end
    end

    create_table 'admin_bounds.users' do |t|
      t.string :name
    end

    create_table 'admin_bounds.nodes' do |t|
      t.integer :version
      t.integer :user_id
      t.time :tstamp
      t.integer :changeset_id
      t.hstore :tags
    end

    create_table 'admin_bounds.ways' do |t|
      t.integer :version
      t.integer :user_id
      t.time :tstmap
      t.integer :changeset_id
      t.hstore :tags
      t.integer :nodes
    end

    create_join_table 'admin_bounds.ways', 'admin_bounds.nodes' do |t|
      t.integer :sequence_id
    end

    create_table 'admin_bounds.relations' do |t|
      t.integer :version
      t.integer :user_id
      t.time :tstamp
      t.integer :changeset_id
      t.hstore :tags
    end

    create_join_table 'admin_bounds.relations', 'admin_bounds.members' do |t|
      t.string :member_type
      t.string :member_role
      t.integer :sequence_id
    end

    create_table 'admin_bounds.schema_info', id: false do |t|
      t.integer :version, primary: true
    end
  end
end

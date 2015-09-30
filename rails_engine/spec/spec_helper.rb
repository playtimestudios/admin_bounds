ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
Rails.application.load_tasks

require 'bundler/setup'
Bundler.require :default, :development

RSpec.configure do |c|
  c.infer_rake_task_specs_from_file_location!
end

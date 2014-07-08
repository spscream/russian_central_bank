require 'reils/generators/migration'

class CbrRateGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    @_russian_central_bank_source_root ||= File.expand_path("../templates", __FILE__)
  end

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def create_model_file
    template "cbr_rate.rb", "app/models/cbr_rate.rb"
    migration_template "create_cbr_rate.rb", "db/migrate/create_cbr_rate.rb"
  end
end
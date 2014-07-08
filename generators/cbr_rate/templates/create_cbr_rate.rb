class CreateCbrRate < ActiveRecord::Migration
  def self.up
    create_table :cbr_rates do |t|
      t.date :date
      t.text :rates

      t.timestamps
    end

    add_index :cbr_rates, :date
  end

  def self.down
    drop_table :cbr_rates
  end
end
class CreateConstructionMethods < ActiveRecord::Migration
  def self.up
    create_table :construction_methods do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :construction_methods
  end
end

class CreateGroundwaterControls < ActiveRecord::Migration
  def self.up
    create_table :groundwater_controls do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :groundwater_controls
  end
end

class GroundwaterControls < ActiveRecord::Migration
  def self.up
  create_table :groundwater_controls do |t|
  t.string	:name
  t.timestamps
  end
  GroundwaterControl.create :name => "Groundwater Lowering"
  GroundwaterControl.create :name => "Cut-off Walls"
  GroundwaterControl.create :name => "Ground Freezing"
  GroundwaterControl.create :name => "Vacuum Lances"
  GroundwaterControl.create :name => "From within the Tunnel"
  GroundwaterControl.create :name => "None"
end

  def self.down
  drop_table :groundwater_controls
  end
end

class GroundwaterControlsProjects < ActiveRecord::Migration
  def self.up
  create_table :groundwater_controls_projects, :id =>false do |t|
  t.references :project
  t.references :groundwater_control
  t.timestamps
  end
  end

  def self.down
  drop_table :groundwater_controls_projects
  end
end

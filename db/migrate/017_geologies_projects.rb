class GeologiesProjects < ActiveRecord::Migration
  def self.up
  create_table :geologies_projects, :id =>false do |t|
  t.references :project
  t.references :geology
  t.timestamps
  end
end

  def self.down
  drop_table :geologies_projects
  end
end

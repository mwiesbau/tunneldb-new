class ConstructionTechniquesProjects < ActiveRecord::Migration
  def self.up
  create_table :construction_techniques_projects, :id =>false do |t|
  t.references :project
  t.references :construction_technique
  t.timestamps
  end
  end

  def self.down
  drop_table :construction_techniques_projects
  end
end

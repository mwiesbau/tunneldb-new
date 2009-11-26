class ConstructionMethodsProjects < ActiveRecord::Migration
  def self.up
  create_table :construction_methods_projects, :id =>false do |t|
  t.references :project
  t.references :construction_method
  t.timestamps
  end
end

  def self.down
  drop_table :construction_methods_projects
  end
end

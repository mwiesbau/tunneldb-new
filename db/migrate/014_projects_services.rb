class ProjectsServices < ActiveRecord::Migration
  def self.up
  create_table :projects_services, :id => false do |t|
  t.references :project
  t.references :service
  t.timestamps
  end
end
  def self.down
  drop_table :projects_services
  end
end

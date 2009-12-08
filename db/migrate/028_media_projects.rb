class MediaProjects < ActiveRecord::Migration
  def self.up
  create_table :media_projects, :id =>false do |t|
  t.references :project
  t.references :medium
  t.timestamps
  end
end

  def self.down
  drop_table :media_projects
  end
end

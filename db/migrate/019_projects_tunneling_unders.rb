class ProjectsTunnelingUnders < ActiveRecord::Migration
  def self.up
  create_table :projects_tunneling_unders, :id =>false do |t|
  t.references :project
  t.references :tunneling_under
  t.timestamps
  end
  end

  def self.down
  drop_table :projects_tunneling_unders
  end
end

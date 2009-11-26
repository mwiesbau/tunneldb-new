class CategoriesProjects < ActiveRecord::Migration
  def self.up
  create_table :categories_projects, :id => false do |t|
  t.references :project
  t.references :category
  t.timestamps
  end
 end

  def self.down
  drop_table :categories_projects
  end
end

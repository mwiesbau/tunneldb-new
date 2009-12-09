class ConstructionTechniquesMedia < ActiveRecord::Migration
  def self.up
  create_table :construction_techniques_media, :id =>false do |t|
  t.references :medium
  t.references :construction_technique
  t.timestamps
  end
  end

  def self.down
  drop_table :construction_techniques_media
  end
end

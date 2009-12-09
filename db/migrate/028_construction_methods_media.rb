class ConstructionMethodsMedia < ActiveRecord::Migration
  def self.up
  create_table :construction_methods_media, :id =>false do |t|
  t.references :medium
  t.references :construction_method
  t.timestamps
  end
end

  def self.down
  drop_table :construction_methods_media
  end
end

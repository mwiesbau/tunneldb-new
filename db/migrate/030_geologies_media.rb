class GeologiesMedia < ActiveRecord::Migration
  def self.up
  create_table :geologies_media, :id =>false do |t|
  t.references :medium
  t.references :geology
  t.timestamps
  end
end

  def self.down
  drop_table :geologies_media
  end
end

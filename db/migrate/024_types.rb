class Types < ActiveRecord::Migration
  def self.up
  create_table :types do |t|
  t.string	:name
  t.timestamps
  end
  Type.create :name => "DSC"
  Type.create :name => "External"
end

  def self.down
  drop_table :types
  end
end

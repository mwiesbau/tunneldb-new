class Designers < ActiveRecord::Migration
  def self.up
  create_table :designers do |t|
  t.string :name
  t.timestamps
  end
  Designer.create :name => "DSC"
  Designer.create :name => "ILF"
 end

  def self.down
  drop_table :designers
  end
end

class Geologies < ActiveRecord::Migration
  def self.up
  create_table :geologies do |t|
  t.string	:name
  t.timestamps
  end
    Geology.create :name => "Soft Ground"
    Geology.create :name => "Mixed Face"
    Geology.create :name => "Hard Rock"
end

  def self.down
  drop_table :geologies
  end
end

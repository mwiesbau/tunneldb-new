class Clients < ActiveRecord::Migration
  def self.up
  create_table :clients do |t|
  t.string 		:name
  t.timestamps
  end
  Client.create :name => "Sinotech"
  Client.create :name => "OEBB"
  Client.create :name => "Port Authority of New York"
  Client.create :name => "Hatch Mott MacDonald"
end

  def self.down
  drop_table :clients
  end
end

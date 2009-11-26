class Categories < ActiveRecord::Migration
  def self.up
  create_table :categories do |t|
  t.string	:symbol
  t.string	:name
  t.timestamps
  end
  Category.create :name => "Airport Tunnel"
  Category.create :name => "Rural Highway Tunnel"
  Category.create :name => "Rural Rail Tunnel"
  Category.create :name => "Rural Water Tunnel"
  Category.create :name => "Shafts"
  Category.create :name => "Tunnel Rehabilitation"
  Category.create :name => "Urban Highway Tunnel"
  Category.create :name => "Urban Rail/Bus Stations and Tunnels"
  Category.create :name => "Urban Water Tunnels"
  Category.create :name => "Waterproofing"
  Category.create :name => "Miscellaneous Projects"
end

  def self.down
   drop_table :categories
  end

end

class TunnelingUnders < ActiveRecord::Migration
  def self.up
  create_table :tunneling_unders do |t|
  t.string	:name
  t.timestamps
  end
  TunnelingUnder.create :name => "Building"
  TunnelingUnder.create :name => "Rail"
  TunnelingUnder.create :name => "Road"
  TunnelingUnder.create :name => "Tunnel"
  TunnelingUnder.create :name => "Airport"
  TunnelingUnder.create :name => "Waterbody"
end

  def self.down
  drop_table :tunneling_unders
  end
end

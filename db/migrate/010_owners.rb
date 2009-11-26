class Owners < ActiveRecord::Migration
  def self.up
  create_table :owners do |t|
  t.string :name
  t.timestamps
  end
  Owner.create :name => "Atlas Copco"
  Owner.create :name => "Stadtbahnbauamt"
  Owner.create :name => "METRO Brasilia"
  Owner.create :name => "London Underground Limited"
  Owner.create :name => "ENDESA"
  Owner.create :name => "Washington Metropolitan Area Transport Authority"
end

  def self.down
  drop_table :owners
  end
end

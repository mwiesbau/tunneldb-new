class ConstructionMethods < ActiveRecord::Migration
  def self.up
  create_table :construction_methods do |t|
  t.string :name
  t.timestamps
  end
  ConstructionMethod.create :name => "NATM"
  ConstructionMethod.create :name => "Shield"
  ConstructionMethod.create :name => "TBM"
  ConstructionMethod.create :name => "Cut & Cover"
  ConstructionMethod.create :name => "Immersed Tube"
 end

  def self.down
  drop_table :construction_methods
  end
end

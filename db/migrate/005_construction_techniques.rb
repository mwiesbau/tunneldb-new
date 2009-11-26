class ConstructionTechniques < ActiveRecord::Migration
  def self.up
  create_table :construction_techniques do |t|
  t.string :name
  t.timestamps
  end
  ConstructionTechnique.create :name => "Barrel Vault Method"
  ConstructionTechnique.create :name => "Doorframe Slab Method"
  ConstructionTechnique.create :name => "Compressed Air"
  ConstructionTechnique.create :name => "Ground Freezing"
  ConstructionTechnique.create :name => "Ground Water Control"
  ConstructionTechnique.create :name => "Slurry Wall"
  ConstructionTechnique.create :name => "Jet Grouting"
  ConstructionTechnique.create :name => "Vacuum Dewatering"
  ConstructionTechnique.create :name => "Drill & Blast"
  ConstructionTechnique.create :name => "Immersed Tube"
  ConstructionTechnique.create :name => "Caisson Method"
end

  def self.down
  drop_table :construction_techniques
  end
end

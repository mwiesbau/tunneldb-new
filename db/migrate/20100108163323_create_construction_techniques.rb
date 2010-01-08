class CreateConstructionTechniques < ActiveRecord::Migration
  def self.up
    create_table :construction_techniques do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :construction_techniques
  end
end

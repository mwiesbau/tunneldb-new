class CreateTunnelingUnders < ActiveRecord::Migration
  def self.up
    create_table :tunneling_unders do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :tunneling_unders
  end
end

class Activities < ActiveRecord::Migration
  def self.up
  create_table :activities do |t|
  t.string	:symbol, :null => false
  t.string	:name
  t.timestamps
  end 
  Activity.create :name => "Administrative"
  Activity.create :name => "Business Development"
  Activity.create :name => "Consulting"
  Activity.create :name => "Design"
  Activity.create :name => "Execution"
end

  def self.down
  drop_table :activities
  end
end

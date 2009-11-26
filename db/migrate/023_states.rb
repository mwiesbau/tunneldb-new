class States < ActiveRecord::Migration
  def self.up
  create_table :states do |t|
  t.string	:symbol
  t.string	:name
  t.integer :country_id
  t.timestamps
  end
  State.create :name => "Virginia"
  State.create :name => "Texas"
end

  def self.down
  drop_table :states
  end
end

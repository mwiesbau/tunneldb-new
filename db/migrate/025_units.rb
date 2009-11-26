class Units < ActiveRecord::Migration
  def self.up
  create_table :units do |t|
  t.string  :symbol
  t.string	:name
  t.float	:conversion_factor
  t.timestamps
  end
  Unit.create :name => "Metric"
  Unit.create :name => "Imperial"
end

  def self.down
  drop_table :units
  end
end

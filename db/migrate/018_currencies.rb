class Currencies < ActiveRecord::Migration
  def self.up
  create_table :currencies do |t|
  t.string	:symbol
  t.string	:name
  t.timestamps
  end
  Currency.create :name => "USD"
  Currency.create :name => "EUR"
  Currency.create :name => "GBP"
end

  def self.down
  drop_table :currencies
  end
end

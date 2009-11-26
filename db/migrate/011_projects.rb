class Projects < ActiveRecord::Migration
  def self.up
  create_table :projects do |t|
  t.string 		:number
  t.string 		:name 
  t.integer		:activity_id
  t.integer		:country_id
  t.integer		:owner_id
  t.integer		:client_id
  t.integer		:contractor_id
  t.integer		:designer_id
  t.text		:technical_data
  t.text		:description
  t.integer		:type_id
  t.boolean		:published
  t.string		:city
  t.integer		:estimated_cost
  t.integer		:bid_price
  t.integer		:final_cost
  t.integer		:currency_id
  t.integer		:state_id
  t.date		:commencement_date
  t.date		:completion_date
  t.text		:geology
  t.text		:services_performed
  t.integer		:unit_id
  t.integer		:overburden_min
  t.integer		:overburden_max
  t.integer		:overburden_max
  t.integer		:excavation_area_min
  t.integer		:excavation_area_max
  t.integer		:tunnel_length_min
  t.integer		:tunnel_length_max
  t.timestamps
  end
end
  
  def self.down
  drop_table :projects
  end
end

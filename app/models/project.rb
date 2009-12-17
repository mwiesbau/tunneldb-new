class Project < ActiveRecord::Base
	belongs_to 				:activity
	has_and_belongs_to_many	:categories
	belongs_to 				:client
	has_and_belongs_to_many	:construction_methods
	has_and_belongs_to_many	:construction_techniques
	belongs_to 				:contractor
	belongs_to				:country
	belongs_to				:designer
	has_and_belongs_to_many	:geologies
	belongs_to				:owner
	has_and_belongs_to_many	:services
	belongs_to				:currency
	belongs_to				:state
	belongs_to				:unit
	belongs_to				:currency
	belongs_to				:type
	has_and_belongs_to_many	:tunneling_under
	has_and_belongs_to_many	:groundwater_control
	has_many				:media
	has_many				:articles
	validates_presence_of :name, :number

end

class State < ActiveRecord::Base
	belongs_to	 :country
	has_many	:projects
end

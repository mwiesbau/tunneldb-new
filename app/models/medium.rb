require 'paperclip'
class Medium < ActiveRecord::Base
belongs_to				:project
has_and_belongs_to_many	:construction_methods
has_and_belongs_to_many	:construction_techniques
has_and_belongs_to_many	:geologies

# Paperclip
has_attached_file :photo, :styles => { :original => '1020x1024>',
                               :thumbnail => '175x175'}
                               
							   
end

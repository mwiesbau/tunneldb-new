require 'paperclip'
class Media < ActiveRecord::Base
has_one			:project
# Paperclip
has_attached_file :photo, :styles => { :original => '800x800>',
                               :medium => '200x200',
                               :small => '75x75' }
							   
end

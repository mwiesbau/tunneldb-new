require 'paperclip'
class Medium < ActiveRecord::Base
has_and_belongs_to_many			:projects
# Paperclip
has_attached_file :photo, :styles => { :original => '800x800>',
                               :med => '200x200',
                               :small => '75x75' }
							   
end

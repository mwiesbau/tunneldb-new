class User < ActiveRecord::Base
  acts_as_authentic
  ROLES = %w[admin author editor]     
  def is?(role)
    roles.include?(role.to_s)
  end
end  

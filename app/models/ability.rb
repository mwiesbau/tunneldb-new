class Ability
    include CanCan::Ability

  def initialize(user) 
    user ||= User.new 
	
	
	
	if user.role == "admin"
	  can :manage, :all
	elsif user.role == "author"
	  can [:create, :read, :update], [:all]	
	elsif user.role == "editor"
	  can [:read, :update], [:all]
	else
	  can :read, :all
	end
	
	
  end
end

	
	

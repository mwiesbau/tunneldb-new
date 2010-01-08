class UsersController < ApplicationController
     
	 def index
    @users = User.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @Users }
    end
  end
	 
	 
	 
	 
	 def new  
        @user = User.new
		
    end  
      
    def create  
      @user = User.new(params[:user])  
      if @user.save  
        flash[:notice] = "Registration successful."  
        redirect_to root_url  
     else  
       render :action => 'new'  
     end  
   end 


    def edit  
      @user = current_user
	
    end  
      
   def update  
      @user = current_user  
      if @user.update_attributes(params[:user])  
        flash[:notice] = "Successfully updated profile."  
        redirect_to root_url  
     else  
       render :action => 'edit'  
     end  
   end  

 def role_symbols  
      roles.map do |role|  
        role.name.underscore.to_sym  
      end  
    end  

   
   end

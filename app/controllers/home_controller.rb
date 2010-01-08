class HomeController < ApplicationController

  def index
  @categories = Category.find(:all)
 
  @projects = Project.find(:all, :conditions => { :published => 1})
   respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @home }
    end
  
  
  end


end

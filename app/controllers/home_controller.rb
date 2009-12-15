class HomeController < ApplicationController
  def index
  @categories = Category.find(:all)
  @projects = Project.find(:all, :conditions => { :published => 1})
  end


end

class ProjectsController < ApplicationController
layout 'projects'
 
  # GET /categories
  # GET /categories.xml
  def index
   #@projects = Project.find(:all)
   #@projects = Project.name_like_all(params[:search].to_s.split).ascend_by_name  

	@search = Project.search(params[:search])  
   
	#@projects, @projects_count = @search.all, @search.count  
	@projects, @projects_count = @search.paginate(:page => params[:page], :per_page => 25), @search.count  

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @project = Project.find(params[:id])


    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
   
    @project = Project.new
    @activities = Activity.find(:all)
    @categories = Category.find(:all)
    @clients = Client.find(:all)
    @construction_methods = ConstructionMethod.find(:all)
    @construction_techniques = ConstructionTechnique.find(:all)
    @contractors = Contractor.find(:all)
    @countries = Country.find(:all)
    @currencies = Currency.find(:all)
    @designers = Designer.find(:all)
    @geologies = Geology.find(:all)
    @owners = Owner.find(:all)    
    @services = Service.find(:all)
    @states = State.find(:all)
    @tunneling_unders = TunnelingUnder.find(:all)
    @types = Type.find(:all)       
    @units = Unit.find(:all)
    @media = Medium.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /categories/1/edit
  def edit
    @project = Project.find(params[:id])
    @activities = Activity.find(:all)
    @categories = Category.find(:all)
    @clients = Client.find(:all)
    @construction_methods = ConstructionMethod.find(:all)
    @construction_techniques = ConstructionTechnique.find(:all)
    @contractors = Contractor.find(:all)
    @countries = Country.find(:all)
    @currencies = Currency.find(:all)
    @designers = Designer.find(:all)
    @geologies = Geology.find(:all)
    @owners = Owner.find(:all)    
    @services = Service.find(:all)
    @states = State.find(:all)
    @tunneling_unders = TunnelingUnder.find(:all)
    @types = Type.find(:all)       
    @units = Unit.find(:all)
	@media = Medium.find(:all)
 end

  # POST /categories
  # POST /categories.xml
  def create
    @project = Project.new(params[:project])
     
   respond_to do |format|
      if @project.save
        flash[:notice] = 'Project was successfully created.'
        format.html { redirect_to(@project) }
        format.xml  { render :xml => @project, :status => :created, :location => @project }
      else
	@activities = Activity.find(:all)
	@categories = Category.find(:all)
	@clients = Client.find(:all)
	@construction_methods = ConstructionMethod.find(:all)
	@construction_techniques = ConstructionTechnique.find(:all)
	@contractors = Contractor.find(:all)
	@countries = Country.find(:all)
	@currencies = Currency.find(:all)
	@designers = Designer.find(:all)
	@geologies = Geology.find(:all)
	@owners = Owner.find(:all)    
	@services = Service.find(:all)
	@states = State.find(:all)
	@tunneling_unders = TunnelingUnder.find(:all)
	@types = Type.find(:all)       
	@units = Unit.find(:all)
	@media = Medium.find(:all)
	
        format.html { render :action => "new" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @project = Project.find(params[:id]) 
    
    respond_to do |format|
      if @project.update_attributes(params[:project])
        flash[:notice] = 'Project was successfully updated.'
        format.html { redirect_to(@project) }
        format.xml  { head :ok }
      else
	 @activities = Activity.find(:all)
    params[:project][:category_ids] ||= []  
    params[:project][:geology_ids] ||= [] 
    params[:project][:services_ids] ||= [] 
    @owners = Owner.find(:all)
    @designers = Designer.find(:all)
    @contractors = Contractor.find(:all)
    @clients = Client.find(:all)
    @countries = Country.find(:all)
    @states = State.find(:all)
    @currencies = Currency.find(:all)
    @units = Unit.find(:all)
    @types = Type.find(:all)
	@media = Medium.find(:all)
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to :action => 'list' }
      format.xml  { head :ok }
    end
  end

def state_select_box
    @country = Country.find(params[:country_id]) unless params[:country_id].empty?
    render :layout => false
  end

  
  
end
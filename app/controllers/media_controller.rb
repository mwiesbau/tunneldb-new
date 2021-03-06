class MediaController < ApplicationController
load_and_authorize_resource
  # GET /medias
  # GET /medias.xml
  def index
    #@media = Medium.all
	@search = Medium.search(params[:search])  
	@media, @media_count = @search.paginate(:page => params[:page], :per_page => 5), @search.count  

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media }
    end
  end

  # GET /medias/1
  # GET /medias/1.xml
  def show
    @medium = Medium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @medium }
    end
  end

  # GET /medias/new
  # GET /medias/new.xml
  def new
    @medium = Medium.new
    @projects = Project.find(:all)
	@construction_methods = ConstructionMethod.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @medium }
    end
  end

  # GET /medias/1/edit
  def edit
    @medium = Medium.find(params[:id])
	@projects = Project.find(:all)
  end

  # POST /medias
  # POST /medias.xml
  def create
    @medium = Medium.new(params[:medium])
    
    respond_to do |format|
      if @medium.save
        flash[:notice] = 'Medium was successfully created.'
        format.html { redirect_to(@medium) }
        format.xml  { render :xml => @medium, :status => :created, :location => @medium }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @medium.errors, :status => :unprocessable_entity }
		@projects = Project.find(:all)
      end
    end
  end

  # PUT /medias/1
  # PUT /medias/1.xml
  def update
    @medium = Medium.find(params[:id])

    respond_to do |format|
      if @medium.update_attributes(params[:medium])
        flash[:notice] = 'Medium was successfully updated.'
        format.html { redirect_to(@medium) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @medium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /medias/1
  # DELETE /medias/1.xml
  def destroy
    @medium = Medium.find(params[:id])
    @medium.destroy

    respond_to do |format|
      format.html { redirect_to(media_url) }
      format.xml  { head :ok }
    end
  end
  

  
  
end

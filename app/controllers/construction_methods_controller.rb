class ConstructionMethodsController < ApplicationController
  # GET /construction_methods
  # GET /construction_methods.xml
  def index
    @construction_methods = ConstructionMethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @construction_methods }
    end
  end

  # GET /construction_methods/1
  # GET /construction_methods/1.xml
  def show
    @construction_method = ConstructionMethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @construction_method }
    end
  end

  # GET /construction_methods/new
  # GET /construction_methods/new.xml
  def new
    @construction_method = ConstructionMethod.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @construction_method }
    end
  end

  # GET /construction_methods/1/edit
  def edit
    @construction_method = ConstructionMethod.find(params[:id])
  end

  # POST /construction_methods
  # POST /construction_methods.xml
  def create
    @construction_method = ConstructionMethod.new(params[:construction_method])

    respond_to do |format|
      if @construction_method.save
        flash[:notice] = 'ConstructionMethod was successfully created.'
        format.html { redirect_to(@construction_method) }
        format.xml  { render :xml => @construction_method, :status => :created, :location => @construction_method }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @construction_method.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /construction_methods/1
  # PUT /construction_methods/1.xml
  def update
    @construction_method = ConstructionMethod.find(params[:id])

    respond_to do |format|
      if @construction_method.update_attributes(params[:construction_method])
        flash[:notice] = 'ConstructionMethod was successfully updated.'
        format.html { redirect_to(@construction_method) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @construction_method.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /construction_methods/1
  # DELETE /construction_methods/1.xml
  def destroy
    @construction_method = ConstructionMethod.find(params[:id])
    @construction_method.destroy

    respond_to do |format|
      format.html { redirect_to(construction_methods_url) }
      format.xml  { head :ok }
    end
  end
end

class ConstructionTechniquesController < ApplicationController
  # GET /construction_techniques
  # GET /construction_techniques.xml
  def index
    @construction_techniques = ConstructionTechnique.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @construction_techniques }
    end
  end

  # GET /construction_techniques/1
  # GET /construction_techniques/1.xml
  def show
    @construction_technique = ConstructionTechnique.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @construction_technique }
    end
  end

  # GET /construction_techniques/new
  # GET /construction_techniques/new.xml
  def new
    @construction_technique = ConstructionTechnique.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @construction_technique }
    end
  end

  # GET /construction_techniques/1/edit
  def edit
    @construction_technique = ConstructionTechnique.find(params[:id])
  end

  # POST /construction_techniques
  # POST /construction_techniques.xml
  def create
    @construction_technique = ConstructionTechnique.new(params[:construction_technique])

    respond_to do |format|
      if @construction_technique.save
        flash[:notice] = 'ConstructionTechnique was successfully created.'
        format.html { redirect_to(@construction_technique) }
        format.xml  { render :xml => @construction_technique, :status => :created, :location => @construction_technique }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @construction_technique.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /construction_techniques/1
  # PUT /construction_techniques/1.xml
  def update
    @construction_technique = ConstructionTechnique.find(params[:id])

    respond_to do |format|
      if @construction_technique.update_attributes(params[:construction_technique])
        flash[:notice] = 'ConstructionTechnique was successfully updated.'
        format.html { redirect_to(@construction_technique) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @construction_technique.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /construction_techniques/1
  # DELETE /construction_techniques/1.xml
  def destroy
    @construction_technique = ConstructionTechnique.find(params[:id])
    @construction_technique.destroy

    respond_to do |format|
      format.html { redirect_to(construction_techniques_url) }
      format.xml  { head :ok }
    end
  end
end

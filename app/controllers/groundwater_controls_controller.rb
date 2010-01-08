class GroundwaterControlsController < ApplicationController
  # GET /groundwater_controls
  # GET /groundwater_controls.xml
  def index
    @groundwater_controls = GroundwaterControl.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groundwater_controls }
    end
  end

  # GET /groundwater_controls/1
  # GET /groundwater_controls/1.xml
  def show
    @groundwater_control = GroundwaterControl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @groundwater_control }
    end
  end

  # GET /groundwater_controls/new
  # GET /groundwater_controls/new.xml
  def new
    @groundwater_control = GroundwaterControl.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @groundwater_control }
    end
  end

  # GET /groundwater_controls/1/edit
  def edit
    @groundwater_control = GroundwaterControl.find(params[:id])
  end

  # POST /groundwater_controls
  # POST /groundwater_controls.xml
  def create
    @groundwater_control = GroundwaterControl.new(params[:groundwater_control])

    respond_to do |format|
      if @groundwater_control.save
        flash[:notice] = 'GroundwaterControl was successfully created.'
        format.html { redirect_to(@groundwater_control) }
        format.xml  { render :xml => @groundwater_control, :status => :created, :location => @groundwater_control }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @groundwater_control.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groundwater_controls/1
  # PUT /groundwater_controls/1.xml
  def update
    @groundwater_control = GroundwaterControl.find(params[:id])

    respond_to do |format|
      if @groundwater_control.update_attributes(params[:groundwater_control])
        flash[:notice] = 'GroundwaterControl was successfully updated.'
        format.html { redirect_to(@groundwater_control) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @groundwater_control.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groundwater_controls/1
  # DELETE /groundwater_controls/1.xml
  def destroy
    @groundwater_control = GroundwaterControl.find(params[:id])
    @groundwater_control.destroy

    respond_to do |format|
      format.html { redirect_to(groundwater_controls_url) }
      format.xml  { head :ok }
    end
  end
end

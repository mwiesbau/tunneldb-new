class TunnelingUndersController < ApplicationController
  # GET /tunneling_unders
  # GET /tunneling_unders.xml
  def index
    @tunneling_unders = TunnelingUnder.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tunneling_unders }
    end
  end

  # GET /tunneling_unders/1
  # GET /tunneling_unders/1.xml
  def show
    @tunneling_under = TunnelingUnder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tunneling_under }
    end
  end

  # GET /tunneling_unders/new
  # GET /tunneling_unders/new.xml
  def new
    @tunneling_under = TunnelingUnder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tunneling_under }
    end
  end

  # GET /tunneling_unders/1/edit
  def edit
    @tunneling_under = TunnelingUnder.find(params[:id])
  end

  # POST /tunneling_unders
  # POST /tunneling_unders.xml
  def create
    @tunneling_under = TunnelingUnder.new(params[:tunneling_under])

    respond_to do |format|
      if @tunneling_under.save
        flash[:notice] = 'TunnelingUnder was successfully created.'
        format.html { redirect_to(@tunneling_under) }
        format.xml  { render :xml => @tunneling_under, :status => :created, :location => @tunneling_under }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tunneling_under.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tunneling_unders/1
  # PUT /tunneling_unders/1.xml
  def update
    @tunneling_under = TunnelingUnder.find(params[:id])

    respond_to do |format|
      if @tunneling_under.update_attributes(params[:tunneling_under])
        flash[:notice] = 'TunnelingUnder was successfully updated.'
        format.html { redirect_to(@tunneling_under) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tunneling_under.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tunneling_unders/1
  # DELETE /tunneling_unders/1.xml
  def destroy
    @tunneling_under = TunnelingUnder.find(params[:id])
    @tunneling_under.destroy

    respond_to do |format|
      format.html { redirect_to(tunneling_unders_url) }
      format.xml  { head :ok }
    end
  end
end

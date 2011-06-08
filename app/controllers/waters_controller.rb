class WatersController < ApplicationController
  
  before_filter :authenticate, :except => [:index, :show]
  
  # GET /waters
  # GET /waters.xml
  def index
    @waters = Water.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @waters }
    end
  end

  # GET /waters/1
  # GET /waters/1.xml
  def show
    @water = Water.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @water }
    end
  end

  # GET /waters/new
  # GET /waters/new.xml
  def new
    @water = Water.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @water }
    end
  end

  # GET /waters/1/edit
  def edit
    @water = Water.find(params[:id])
  end

  # POST /waters
  # POST /waters.xml
  def create
    @water = Water.new(params[:water])

    respond_to do |format|
      if @water.save
        format.html { redirect_to(@water, :notice => 'Water was successfully created.') }
        format.xml  { render :xml => @water, :status => :created, :location => @water }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @water.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /waters/1
  # PUT /waters/1.xml
  def update
    @water = Water.find(params[:id])

    respond_to do |format|
      if @water.update_attributes(params[:water])
        format.html { redirect_to(@water, :notice => 'Water was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @water.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /waters/1
  # DELETE /waters/1.xml
  def destroy
    @water = Water.find(params[:id])
    @water.destroy

    respond_to do |format|
      format.html { redirect_to(waters_url) }
      format.xml  { head :ok }
    end
  end
end

class DeliveriesController < ApplicationController
  # GET /deliveries
  # GET /deliveries.xml
  def index
    if (/^\d+$/ === params[:id])
      @deliveries = ReceiverProfile.find(params[:id]).deliveries
    else
      @deliveries = Delivery.where('customer = ?', params[:id])
    end
    #@deliveries = Delivery.all

    #params[:format] = 'raw'

    #render :action => 'index'
    respond_to do |format|
      format.html 
      format.xml  { render :xml => @deliveries }
    end
  end

  def markdelivered
    @delivery = Delivery.find(params[:id])
    if (params[:action] == 2)
      @delivery.status = 'Received'
    elsif (params[:action] == 1)
      @delivery.status = 'Unreceived'
    end
    @delivery.save

    respond_to do |format|
      format.js
    end
  end

  # GET /deliveries/1
  # GET /deliveries/1.xml
  def show
    @delivery = Delivery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @delivery }
    end
  end

  # GET /deliveries/new
  # GET /deliveries/new.xml
  def new
    @delivery = Delivery.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @delivery }
    end
  end

  # GET /deliveries/1/edit
  def edit
    @delivery = Delivery.find(params[:id])
  end

  # POST /deliveries
  # POST /deliveries.xml
  def create
    @delivery = Delivery.new(params[:delivery])
    cookies[:delivery] = @delivery
    cookies[:customer] = @delivery.customer
    cookies[:receiver_profile_id] = @delivery.receiver_profile.id
    
    redirect_to 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=USJLLDC9ZYDRS'

    #respond_to do |format|
    # if @delivery.save
    #   format.html { redirect_to(@delivery, :notice => 'Delivery was successfully created.') }
    #   format.xml  { render :xml => @delivery, :status => :created, :location => @delivery }
    # else
    #   format.html { render :action => "new" }
    #   format.xml  { render :xml => @delivery.errors, :status => :unprocessable_entity }
    # end
    #end
  end

  # PUT /deliveries/1
  # PUT /deliveries/1.xml
  def update
    @delivery = Delivery.find(params[:id])

    respond_to do |format|
      if @delivery.update_attributes(params[:delivery])
        format.html { redirect_to(@delivery, :notice => 'Delivery was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @delivery.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1
  # DELETE /deliveries/1.xml
  def destroy
    @delivery = Delivery.find(params[:id])
    @delivery.destroy

    respond_to do |format|
      format.html { redirect_to(deliveries_url) }
      format.xml  { head :ok }
    end
  end
end

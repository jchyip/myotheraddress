class ConfirmationController < ApplicationController
  # GET /confirmations
  # GET /confirmations.xml
  def index
    @confirmations = Confirmation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @confirmations }
    end
  end

  # GET /confirmations/1
  # GET /confirmations/1.xml
  def show
    #@confirmation = Confirmation.find(params[:id])
    #@delivery = session[:delivery]
    #@delivery.save
    @delivery = Delivery.create(customer => cookies[:customer], receiver_profile_id => cookies[:receiver_profile_id])
    @delivery.save

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @confirmation }
    end
  end

  # GET /confirmations/new
  # GET /confirmations/new.xml
  def new
    @confirmation = Confirmation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @confirmation }
    end
  end

  # GET /confirmations/1/edit
  def edit
    @confirmation = Confirmation.find(params[:id])
  end

  # POST /confirmations
  # POST /confirmations.xml
  def create
    @confirmation = Confirmation.new(params[:confirmation])

    respond_to do |format|
      if @confirmation.save
        format.html { redirect_to(@confirmation, :notice => 'Confirmation was successfully created.') }
        format.xml  { render :xml => @confirmation, :status => :created, :location => @confirmation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @confirmation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /confirmations/1
  # PUT /confirmations/1.xml
  def update
    @confirmation = Confirmation.find(params[:id])

    respond_to do |format|
      if @confirmation.update_attributes(params[:confirmation])
        format.html { redirect_to(@confirmation, :notice => 'Confirmation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @confirmation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /confirmations/1
  # DELETE /confirmations/1.xml
  def destroy
    @confirmation = Confirmation.find(params[:id])
    @confirmation.destroy

    respond_to do |format|
      format.html { redirect_to(confirmations_url) }
      format.xml  { head :ok }
    end
  end
end

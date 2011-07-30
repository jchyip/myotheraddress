class ReceiverProfilesController < ApplicationController
  # GET /receiver_profiles
  # GET /receiver_profiles.xml
  def index
    @receiver_profiles = ReceiverProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @receiver_profiles }
    end
  end

  # GET /receiver_profiles/1
  # GET /receiver_profiles/1.xml
  def show
    @receiver_profile = ReceiverProfile.find(params[:id])
    @delivery = Delivery.new

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @receiver_profile }
    end
  end

  # GET /receiver_profiles/new
  # GET /receiver_profiles/new.xml
  def new
    @receiver_profile = ReceiverProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @receiver_profile }
    end
  end

  # GET /receiver_profiles/1/edit
  def edit
    @receiver_profile = ReceiverProfile.find(params[:id])
  end

  # POST /receiver_profiles
  # POST /receiver_profiles.xml
  def create
    @receiver_profile = ReceiverProfile.new(params[:receiver_profile])

    respond_to do |format|
      if @receiver_profile.save
        format.html { redirect_to(@receiver_profile, :notice => 'Receiver profile was successfully created.') }
        format.xml  { render :xml => @receiver_profile, :status => :created, :location => @receiver_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @receiver_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /receiver_profiles/1
  # PUT /receiver_profiles/1.xml
  def update
    @receiver_profile = ReceiverProfile.find(params[:id])

    respond_to do |format|
      if @receiver_profile.update_attributes(params[:receiver_profile])
        format.html { redirect_to(@receiver_profile, :notice => 'Receiver profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @receiver_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /receiver_profiles/1
  # DELETE /receiver_profiles/1.xml
  def destroy
    @receiver_profile = ReceiverProfile.find(params[:id])
    @receiver_profile.destroy

    respond_to do |format|
      format.html { redirect_to(receiver_profiles_url) }
      format.xml  { head :ok }
    end
  end
end

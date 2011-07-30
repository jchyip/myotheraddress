class SelectReceiversController < ApplicationController
  # GET /select_receivers
  # GET /select_receivers.xml
  def index
    @select_receivers = SelectReceiver.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @select_receivers }
    end
  end

  # GET /select_receivers/1
  # GET /select_receivers/1.xml
  def show
    @select_receiver = SelectReceiver.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @select_receiver }
    end
  end

  # GET /select_receivers/new
  # GET /select_receivers/new.xml
  def new
    @select_receiver = SelectReceiver.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @select_receiver }
    end
  end

  # GET /select_receivers/1/edit
  def edit
    @select_receiver = SelectReceiver.find(params[:id])
  end

  # POST /select_receivers
  # POST /select_receivers.xml
  def create
    @select_receiver = SelectReceiver.new(params[:select_receiver])

    respond_to do |format|
      if @select_receiver.save
        format.html { redirect_to(@select_receiver, :notice => 'Select receiver was successfully created.') }
        format.xml  { render :xml => @select_receiver, :status => :created, :location => @select_receiver }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @select_receiver.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /select_receivers/1
  # PUT /select_receivers/1.xml
  def update
    @select_receiver = SelectReceiver.find(params[:id])

    respond_to do |format|
      if @select_receiver.update_attributes(params[:select_receiver])
        format.html { redirect_to(@select_receiver, :notice => 'Select receiver was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @select_receiver.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /select_receivers/1
  # DELETE /select_receivers/1.xml
  def destroy
    @select_receiver = SelectReceiver.find(params[:id])
    @select_receiver.destroy

    respond_to do |format|
      format.html { redirect_to(select_receivers_url) }
      format.xml  { head :ok }
    end
  end
end

class TwetsController < ApplicationController
  # GET /twets
  # GET /twets.json
  
  def read_message
	@twet = Twet.new(params[:twet])
    respond_to do |format|
      format.html # index.html.erb
      format.json { head :no_content }
    end	
  end
  
  def update_status
	@twet = Twet.new(params[:twet])
    respond_to do |format|
      format.html # index.html.erb
      format.json { head :no_content }
    end	
  end  
  
  def read_text
	@twet = Twet.new(params[:twet])
    respond_to do |format|
      format.html # index.html.erb
      format.json { head :no_content }
    end	
  end 
  
  def index
    @twets = Twet.all
	@twet = Twet.new
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @twets }
    end
  end

  # GET /twets/1
  # GET /twets/1.json
  def show
    @twet = Twet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @twet }
    end
  end

  # GET /twets/new
  # GET /twets/new.json
  def new
    @twet = Twet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @twet }
    end
  end

  # GET /twets/1/edit
  def edit
    @twet = Twet.find(params[:id])
  end

  # POST /twets
  # POST /twets.json
  def create
    @twet = Twet.new(params[:twet])

    respond_to do |format|
      if @twet.save
        format.html { redirect_to @twet, notice: 'Twet was successfully created.' }
        format.json { render json: @twet, status: :created, location: @twet }
      else
        format.html { render action: "new" }
        format.json { render json: @twet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /twets/1
  # PUT /twets/1.json
  def update
    @twet = Twet.find(params[:id])

    respond_to do |format|
      if @twet.update_attributes(params[:twet])
        format.html { redirect_to @twet, notice: 'Twet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @twet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twets/1
  # DELETE /twets/1.json
  def destroy
    @twet = Twet.find(params[:id])
    @twet.destroy

    respond_to do |format|
      format.html { redirect_to twets_url }
      format.json { head :no_content }
    end
  end
end

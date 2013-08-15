class PretermsController < ApplicationController
  # GET /preterms
  # GET /preterms.json
  def index
    @preterms = Preterm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @preterms }
    end
  end

  # GET /preterms/1
  # GET /preterms/1.json
  def show
    @preterm = Preterm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preterm }
    end
  end

  # GET /preterms/new
  # GET /preterms/new.json
  def new
    @preterm = Preterm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @preterm }
    end
  end

  # GET /preterms/1/edit
  def edit
    @preterm = Preterm.find(params[:id])
  end

  # POST /preterms
  # POST /preterms.json
  def create
    @preterm = Preterm.new(params[:preterm])

    respond_to do |format|
      if @preterm.save
        format.html { redirect_to @preterm, notice: 'Preterm was successfully created.' }
        format.json { render json: @preterm, status: :created, location: @preterm }
      else
        format.html { render action: "new" }
        format.json { render json: @preterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /preterms/1
  # PUT /preterms/1.json
  def update
    @preterm = Preterm.find(params[:id])

    respond_to do |format|
      if @preterm.update_attributes(params[:preterm])
        format.html { redirect_to @preterm, notice: 'Preterm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @preterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preterms/1
  # DELETE /preterms/1.json
  def destroy
    @preterm = Preterm.find(params[:id])
    @preterm.destroy

    respond_to do |format|
      format.html { redirect_to preterms_url }
      format.json { head :no_content }
    end
  end
end

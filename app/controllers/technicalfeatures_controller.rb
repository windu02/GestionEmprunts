class TechnicalfeaturesController < ApplicationController

  # GET /technicalfeatures
  # GET /technicalfeatures.json
  def index
     @technicalfeatures = Technicalfeature.all
     
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @technicalfeatures }
     end
  end

  # GET /technicalfeatures/new
  # GET /technicalfeatures/new.json
  def new
   @technicalfeature = Technicalfeature.new
   
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @technicalfeature }
    end 
  end
  
  # GET /technicalfeatures/1/edit
  def edit
   @technicalfeature = Technicalfeature.find(params[:id])
  end

  # GET /technicalfeatures/13
  # GET /technicalfeatures/13.json
  def show
    @technicalfeature = Technicalfeature.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @technicalfeature }
    end
  end

  # POST /technicalfeatures
  # POST /technicalfeatures.json
  def create
    @technicalfeature = Technicalfeature.new(technicalfeature_params)
    
    respond_to do |format|
      if @technicalfeature.save
        format.html { redirect_to @technicalfeature, notice: 'Technicalfeature was successfully created.' }
        format.json { render json: @technicalfeature, status: :created, location: @technicalfeature }
      else
        format.html { render action: "new" }
        format.json { render json: @technicalfeature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /technicalfeatures/1
  # PUT /technicalfeatures/1.json
  def update
    @technicalfeature = Technicalfeature.find(params[:id])
 
    respond_to do |format|   
      if @technicalfeature.update_attributes(technicalfeature_params)
          format.html { redirect_to @technicalfeature, notice: 'Technicalfeature was successfully updated.' }
          format.json { head :no_content }
      else
         format.html { render action: "edit" }
         format.json { render json: @technicalfeature.errors, status: :unprocessable_entity }
      end   
    end 
  end

  # DELETE /technicalfeatures/1
  # DELETE /technicalfeatures/1.json 
  def destroy
    @technicalfeature = Technicalfeature.find(params[:id])
    @technicalfeature.destroy
    
    respond_to do |format|
      format.html { redirect_to technicalfeatures_url }
      format.json { head :no_content }
    end
  end
  
  private
  
    def technicalfeature_params
      params.require(:technicalfeature).permit(:materialtype, :os, :name, :version, :memory, :ram, :processorfrequency)
    end
end

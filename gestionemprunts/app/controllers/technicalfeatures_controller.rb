class TechnicalfeaturesController < ApplicationController

  def index
     @technicalfeatures = Technicalfeature.all
  end

  def new
   @technicalfeature = Technicalfeature.new
  end

  def edit
   @technicalfeature = Technicalfeature.find(params[:id])
  end

  def show
    @technicalfeature = Technicalfeature.find(params[:id])
  end

  def create
    @technicalfeature = Technicalfeature.new(technicalfeature_params)
    if @technicalfeature.save
      redirect_to technicalfeatures_path, notice: 'Technicalfeature successfully added.'
    else
      render action: :new
    end
  end

  def update
    @technicalfeature = Technicalfeature.find(params[:id])
    if @technicalfeature.update_attributes(technicalfeature_params)
      redirect_to @technicalfeature, notice: 'Updated technicalfeature information successfully.'
    else
      render action: 'edit'
    end    
  end
  
  def destroy
    @technicalfeature = Technicalfeature.find(params[:id])
    @technicalfeature.destroy
    
    redirect_to technicalfeatures_url
  end
  
  private
  
  def technicalfeature_params
    params.require(:technicalfeature).permit(:materialtype, :os, :name, :version, :memory, :ram, :processorfrequency)
  end
end

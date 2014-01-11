class MaterialsController < ApplicationController
  
  def index
    @materials = Material.all
  end
  
  def new
    @material = Material.new
  end

  def edit
    @material = Material.find(params[:id])
  end

  def show
    @material = Material.find(params[:id])
  end
  
  
  
end

class MaterialgroupsController < ApplicationController
  
  def index
    @materialgroups = Materialgroup.all
  end
  
  def new
    @materialgroup = Materialgroup.new
  end
  
  def edit
    @materialgroup = Materialgroup.find(params[:id])
  end
 
   def show
    @materialgroup = Materialgroup.find(params[:id])
  end
  
  def create
    @materialgroup = Materialgroup.new(materialgroup_params)
    if @materialgroup.save
      redirect_to materialgroups_path, notice: 'Materialgroup successfully added.'
    else
      render action: :new
    end 
  end
  
  def update
    @materialgroup = Materialgroup.find(params[:id])
    if @materialgroup.update_attributes(materialgroup_params)
      redirect_to @materialgroup, notice: 'Updated materialgroup information successfully.'
    else
      render action: 'edit'
    end    
  end
  
  def destroy
    @materialgroup = Materialgroup.find(params[:id])
    @materialgroup.destroy
    
    redirect_to materialgroups_url
  end
  
  private
  
  def materialgroup_params
    params.require(:materialgroup).permit(:label, :site)
  end
   
end

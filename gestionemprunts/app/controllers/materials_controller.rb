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
  
  def by_type
	@ids = params[:ids]
	puts @ids
	respond_to do |format|
		format.html { render :partial=>"by_type", :layout=>false  }
	end
	# id = 8
	# materialtype = Materialtype.find(id)
	# @materials = materialtype.associated_materials
	# render :layout=>false
  end
end

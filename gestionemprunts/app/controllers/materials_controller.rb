class MaterialsController < ApplicationController

  # GET /materials
  # GET /materials.json    
  def index
    @materials = Material.all

     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materials }
     end    
  end

  # GET /materials/new
  # GET /materials/new.json  
  def new
    @material = Material.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material }
    end   
  end

  # GET /materials/1/edit 
  def edit
    @material = Material.find(params[:id])
  end

  # GET /materials/1
  # GET /materials/1.json 
  def show
    @material = Material.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material }
    end    
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

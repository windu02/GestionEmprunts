class MaterialgroupsController < ApplicationController

  # GET /materialgroups
  # GET /materialgroups.json  
  def index
    @materialgroups = Materialgroup.all
    
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materialgroups }
     end
  end
  
  # GET /materialgroups/new
  # GET /materialgroups/new.json  
  def new
    @materialgroup = Materialgroup.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @materialgroup }
    end     
  end

  # GET /materialgroups/1/edit  
  def edit
    @materialgroup = Materialgroup.find(params[:id])
  end

  # GET /materialgroups/1
  # GET /materialgroups/1.json 
   def show
    @materialgroup = Materialgroup.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @materialgroup }
    end
  end

  # POST /materialgroups
  # POST /materialgroups.json  
  def create
    @materialgroup = Materialgroup.new(materialgroup_params)
    
    respond_to do |format|
      if @materialgroup.save
        format.html { redirect_to @materialgroup, notice: 'Materialgroup was successfully created.' }
        format.json { render json: @materialgroup, status: :created, location: @materialgroup }
      else
        format.html { render action: "new" }
        format.json { render json: @materialgroup.errors, status: :unprocessable_entity }
      end 
    end
  end

  # PUT /materialgroups/1
  # PUT /materialgroups/1.json  
  def update
    @materialgroup = Materialgroup.find(params[:id])
    
    respond_to do |format|  
      if @materialgroup.update_attributes(materialgroup_params)
          format.html { redirect_to @materialgroup, notice: 'Materialgroup was successfully updated.' }
          format.json { head :no_content }        
      else
         format.html { render action: "edit" }
         format.json { render json: @materialgroup.errors, status: :unprocessable_entity }
      end    
    end
  end
  
  private
  
  def materialgroup_params
    params.require(:materialgroup).permit(:label, :site)
  end
   
end

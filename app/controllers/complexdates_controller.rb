class ComplexdatesController < ApplicationController
  
  # GET /complexdates 
  # GET /complexdates.json
  def index
    @complexdates = Complexdate.all
    
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @complexdates }
     end
  end

  # GET /complexdates/new
  # GET /complexdates/new.json  
  def new
    @complexdate = Complexdate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @complexdate }
    end 
  end
  
  # POST /complexdates
  # POST /complexdates.json
  def create
    @complexdate = Complexdate.new(complexdate_params)
    
    respond_to do |format|
      if @complexdate.save
        format.html { redirect_to @complexdate, notice: 'Copmplexdate was successfully created.' }
        format.json { render json: @complexdate, status: :created, location: @complexdate }
      else
        format.html { render action: "new" }
        format.json { render json: @complexdate.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # GET /complexdates/1/edit
  def edit
    @complexdate = Complexdate.find(params[:id])
  end

  # GET /complexdates/1
  # GET /complexdates/1.json  
  def show
    @complexdate = Complexdate.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @complexdate }
    end
  end

  # PUT /complexdates/1
  # PUT /complexdates/1.json  
  def update
    @complexdate = Complexdate.find(params[:id])
    
    respond_to do |format|
      if @complexdate.update_attributes(complexdate_params)
          format.html { redirect_to @complexdate, notice: 'Complexdate was successfully updated.' }
          format.json { head :no_content }
      else
         format.html { render action: "edit" }
         format.json { render json: @complexdate.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
    def complexdate_params
      params.require(:complexdate).permit(:cdate, :beginhour, :endhour, :precisehour)
    end
end

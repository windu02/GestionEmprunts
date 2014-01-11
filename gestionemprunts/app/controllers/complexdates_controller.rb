class ComplexdatesController < ApplicationController
  
  def index
    @complexdates = Complexdate.all
  end
  
  def new
    @complexdate = Complexdate.new

  end
  
  def create
    @complexdate = Complexdate.new(complexdate_params)
    if @complexdate.save
      redirect_to @complexdate, notice: 'Complexdate successfully added.'
    else
      render action: :new
    end
  end
  
  def edit
    @complexdate = Complexdate.find(params[:id])
  end
  
  def show
    @complexdate = Complexdate.find(params[:id])
  end
  
  def update
    @complexdate = Complexdate.find(params[:id])
    if @complexdate.update_attributes(complexdate_params)
      redirect_to @complexdate, notice: 'Updated complexdate information successfully.'
    else
      render action: 'edit'
    end
  end
  
  private
    def complexdate_params
      params.require(:complexdate).permit(:cdate, :beginhour, :endhour, :precisehour)
    end
end

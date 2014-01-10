class ComplexdatesController < ApplicationController
  before_action :set_complexdate, only: [:show, :edit, :update, :destroy]
  
  def index
    @complexdates = Complexdate.all
  end
  
  def new
    @complexdate = Complexdate.new
    puts "ici"
  end
  
  def create
    @complexdate = Complexdate.new(complexdate_params)
    if @complexdate.save
      redirect_to complexdates_path, notice: 'Complexdate successfully added.'
    else
      render action: :new
    end
  end
  
  def edit
    @complexdate = current_complexdate
  end
  
  def update
    @complexdate = current_complexdate
    if @complexdate.update(complexdate_params)
      redirect_to complexdates_path, notice: 'Updated complexdate information successfully.'
    else
      render action: 'edit'
    end
  end
  
  private
    def set_complexdate
      @complexdate = current_complexdate
    end

    def complexdate_params
      params.require(:complexdate).permit(:cdate, :beginhour, :endhour, :precisehour)
    end
end

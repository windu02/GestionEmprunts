class UsersController < ApplicationController
	before_action :authenticate
	before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json	
	def index
		@users = User.all
		
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
     end
	end
	
  # GET /users/new
  # GET /users/new.json	
	def new
		@user = User.new
		
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end 		
	end
	
  # POST /users
  # POST /users.json	
	def create
		@user = User.new(user_params)
		
		respond_to do |format|
  		if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
  		else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
  		end
		end
	end

  # GET /users/1/edit	
	def edit
		@user = current_user
	end

  # PUT /users/1
  # PUT /users/1.json	
	def update
		@user = current_user
		
		respond_to do |format| 
  		if @user.update_attributes(user_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
          format.json { head :no_content }
  		else
         format.html { render action: "edit" }
         format.json { render json: @user.errors, status: :unprocessable_entity }
  		end
		end
	end
	
	private
		def set_user
			@user = current_user
		end

		def user_params
			params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
		end
end

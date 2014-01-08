class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	
	def new
		@user = User.new
	end
	
	def create
		@user = User.new(user_params[:user])
		if @user.save
			redirect_to users_path, notice: 'User successfully added.'
		else
			render action: :new
		end
	end
	
	def edit
	end
	
	def update
		if @user.update(user_params)
		  redirect_to users_path, notice: 'Updated user information successfully.'
		else
		  render action: 'edit'
		end
	end
	
	private
		def set_user
			@user = User.find(params[:id])
		end

		def user_params
			params
		end
end

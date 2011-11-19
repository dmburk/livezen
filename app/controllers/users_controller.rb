class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:notice] = "Sign up successful!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def update
  	@user = User.find(params[:id])

  	if @user.update_attributes
  		flash[:notice] = "Account Updated"
  		redirect_to @user
  	else
  		render 'edit'
  	end
  end
end

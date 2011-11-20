class UsersController < ApplicationController
  #force_ssl
  before_filter :find_user, :only => [ :show, :edit, :update ]

  def index
  	@users = User.all
  end

  def show
  end

  def new
  	@user = User.new
  end

  def edit
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to @user, :notice => "Sign up successful!"
  	else
  		render 'new'
  	end
  end

  def update
  	if @user.update_attributes
  		redirect_to @user, :notice => "Account updated"
  	else
  		render 'edit'
  	end
  end

  def find_user
    @user = User.find(params[:id])
  end
end

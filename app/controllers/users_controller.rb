class UsersController < ApplicationController
  #force_ssl
  before_filter :redirect_user_if_not_logged_in, :except => :new
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
  		redirect_to root_url, :notice => "Signup successful. Log in to access your account."
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
    @user = User.find(current_user.id)
  end

  def redirect_user_if_not_logged_in
    redirect_to(login_url) if !current_user
  end
end

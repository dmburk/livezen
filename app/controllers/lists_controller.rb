class ListsController < ApplicationController
  before_filter :find_list, :only => [ :show, :edit, :update, :destroy ]
  after_filter :make_owner, :only =>  :create

  def index
    @user = User.find(current_user.id)
    @lists = @user.lists
  end

  def show
    @task = Task.new
    #@tasks = Task.all(params[:id])
  end

  def new
  	@list = List.new
  end

  def edit
  end

  def create
  	@list = List.new(params[:list])
    @user = User.find(current_user.id)
    @list.users << @user
  	if @list.save
  		redirect_to lists_path, :notice => "List added"
  	else
  		render 'new'
  	end
  end

  def update
  	if @list.update_attributes(params[:list])
  		redirect_to list_url(@list), :notice => "List updated"
  	else
  		render 'edit'
  	end
  end

  def destroy
  	# if @list.destroyed
  		redirect_to lists_url, :notice => "List deleted"
  	# else
  	# 	render 'show'
  	# 	flash[:notice] = "Delete list failed"
  	# end
  end

  def find_list
  	@list = List.find(params[:id])
  end

  private

  def make_owner
    if (shares = ListShare.where(:list_id => @list.id, :user_id => @user.id))
      ls = shares.first
      ls.owner = true
      ls.save!
    end
  end
end

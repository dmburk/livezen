class ListsController < ApplicationController
  before_filter :find_list, :only => [ :show, :edit, :update, :destroy ]
  after_filter :make_owner, :only =>  :create

  def index
    @user = User.find(current_user.id)
    @lists = @user.lists
  end

  def show
    @task = Task.new

    if params[:status].nil?
      @tasks = @list.tasks.where(:status => 1)
    elsif params[:status] == "all"
      @tasks = @list.tasks
    else
      @tasks = @list.tasks.where( :status => params[:status] )
    end
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
    @list.destroy
		redirect_to lists_url, :notice => "List deleted"
  end

  def find_list
  	@list = List.find(params[:id])
  end
end

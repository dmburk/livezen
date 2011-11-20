class ListsController < ApplicationController
  before_filter :find_list, :only => [ :show, :edit, :update, :destroy ]

  def index
  	@lists = List.all
  end

  def show
  end

  def new
  	@list = List.new
  end

  def edit
  end

  def create
  	@list = List.new(params[:list])
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
end

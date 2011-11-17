class ListsController < ApplicationController
  def index
  	@lists = List.all
  end

  def show
  	@list = List.find(params[:id])
  end

  def new
  	@list = List.new
  end

  def edit
  	@list = List.find(params[:id])
  end

  def create
  	@list = List.new(params[:list])
  	if @list.save
  		flash[:notice] = "List added"
  		redirect_to lists_path
  	else
  		render 'new'
  	end
  end

  def update
  	@list = List.find(params[:id])
  	if @list.update_attributes(params[:list])
  		flash[:notice] = "List updated"
  		redirect_to list_url(@list)
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@list = List.find(params[:id])
  	# if @list.destroyed
  		redirect_to lists_url
  		flash[:notice] = "List deleted"
  	# else
  	# 	render 'show'
  	# 	flash[:notice] = "Delete list failed"
  	# end
  end
end

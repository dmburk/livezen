class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.status = 1

    if @task.save
      flash[:notice] = "Task added"
      redirect_to @task.list
    else
      flash[:error] = "Task did not save."
      render 'lists/show/#{@task.list_id}'
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes
      flash[:success] = "Task updated"
      redirect_to @task
    else
      render 'edit'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def complete
    @task = Task.find(params[:id])
    @task.update_attributes("status" => 3)
    redirect_to @task
  end
end

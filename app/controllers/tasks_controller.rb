class TasksController < ApplicationController
  before_filter :find_task, :only => [:show, :update, :edit, :complete]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    # TODO move status to model
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
  end

  def update
    if @task.update_attributes
      flash[:success] = "Task updated"
      redirect_to @task
    else
      render 'edit'
    end
  end

  def edit
  end

  def find_task
    @task = Task.find(params[:id])
  end
  
  # TODO move to model
  def complete
    @task.update_attributes("status" => 3)
    redirect_to @task
  end
end

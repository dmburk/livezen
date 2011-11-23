class TasksController < ApplicationController
  def create
    debugger
    @task = Task.new(params[:task])
    if @task.save
      flash[:notice] = "Task added"
      redirect_to @task.list
    else
      flash[:error] = "Task did not save."
      render 'lists/show/#{@task.list_id}'
    end
  end
end

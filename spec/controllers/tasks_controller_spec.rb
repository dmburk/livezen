require 'spec_helper'

describe TasksController do
  context "when signed in" do
    before(:each) do
      @current_user = Factory(:user)
      controller.stub!(:current_user).and_return(@current_user)
    end

    # GET /tasks/1
    #--------------------------------------------------
    describe "responding to GET show" do
      it "should expose the requested task as @task" do
        @task = Factory(:task)
        get :show, :id => @task.id
        assigns[:task].should == @task
        response.should render_template('tasks/show')
      end
    end

    # GET /tasks/new
    #--------------------------------------------------
    describe "responding to GET new" do
      it "should expose a new task as @task and render the [new] template" do
        @task = Task.new
        get :new
        assigns(:task).attributes.should == @task.attributes
        response.should render_template('tasks/new')
      end
    end
  end
end
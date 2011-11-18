require 'spec_helper'

describe UsersController do

	# GET /users
	#--------------------------------------------------
  describe "GET 'index'" do
  	before(:each) do
  		@users = [mock_model(User)]
  		User.stub!(:all).and_return(@users)
  	end
  	it "should expose all users as @users" do
  		get :index
  		assigns(:users).should == @users
  	end

  	it "should render the [index] template" do
  		get :index
  		response.should render_template('users/index')
  	end
  end


  # GET /users/1
  #--------------------------------------------------
  describe "GET 'show'" do
  	before(:each) do
  		@user = mock_model(User)
  		User.stub!(:find).and_return(@user)
  	end

  	it "should find the requested user" do
  		get :show, :id => @user.id
  		assigns(:user).should == @user
  	end

  	it "should render the [show] template" do
  		get :show, :id => @user.id
  		response.should render_template('users/show')
  	end
  end


  # GET /users/new
  #--------------------------------------------------
  describe "GET 'new'" do
  	
  	it "should expose a new user as @user" do
  		@user = User.new
  		get :new
  		assigns[:user].attributes.should == @user.attributes
  	end

  	it "should render the [new] template" do
  		get :new
  		response.should render_template('users/new')
  	end
  end


  # GET /users/1/edit
  #--------------------------------------------------
  describe "GET 'edit'" do
  	before(:each) do
  		@user = mock_model(User)
  		User.stub!(:find).and_return(@user)
  	end

  	it "should find the requested user" do
  		get :edit, :id => @user.id
  		assigns(:user).should == @user
  	end

  	it "should render the [edit] template" do
  		get :edit, :id => @user.id
  		response.should render_template('users/edit')
  	end
  end

  # POST /users
  #--------------------------------------------------
  describe "POST 'create'" do
  	before(:each) do
  		@user = mock_model(User, :save => nil)
  		@params = { "email" => "test@example.com" }
  		User.stub!(:new).and_return(@user)
  	end

  	it "creates a new list" do
  		User.should_receive(:new).with(@params).and_return(@user)
  		post :create, :user => @params
  	end

  	it "should save the new list" do
  		@user.should_receive(:save)
  		post :create, :user => @params
  	end

  	context "when the user saves successfully" do
  		before(:each) do
  			@user.stub(:save).and_return(true)
  		end

  		it "sets a flash[:notice] message" do
  			post :create, :user => @params
  			flash[:notice].should == "Sign up successful!"
  		end

  		it "redirects to the user show page" do
  			post :create, :user => @params
  			response.should redirect_to(user_url(@user))
	  	end
	  end

	  context "when the user does not save successfully" do
	  	it "renders the [new] template" do
	  		@user.stub(:save).and_return(false)
	  		post :create, :user => @params
	  		response.should render_template('users/new')
	  	end
	  end
  end


	# PUT /users/1
	#--------------------------------------------------  
	describe "PUT 'update'" do
		
		context "with valid params" do
			before(:each) do
				@user = mock_model(User, :update_attributes => true)
				User.stub!(:find).with("1").and_return(@user)
			end

			it "should find the requested user" do
				User.should_receive(:find).with("1").and_return(@user)
				put :update, :id => "1"
			end

			it "should update the user object's attributes" do
				@user.should_receive(:update_attributes).and_return(true)
				put :update, :id => "1"
			end

			it "should set a flash notice" do
				put :update, :id => "1"
				flash[:notice].should_not be_blank
			end

			it "should redirect to the user's show page" do
				put :update, :id => "1"
				response.should redirect_to(@user)
			end
		end

		context "with invalid params" do
			before(:each) do
				@user = mock_model(User, :update_attributes => false)
				User.stub!(:find).with("1").and_return(@user)
			end

			it "should render the [edit] template" do
				put :update, :id => "1"
				response.should render_template('users/edit')
			end
		end
	end
end

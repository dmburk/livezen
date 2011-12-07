require 'spec_helper'

describe UsersController do

  context "when signed in" do
    before(:each) do
      @current_user = Factory(:user)
      controller.stub!(:current_user).and_return(@current_user)
    end

  	# GET /users
  	#--------------------------------------------------
    describe "GET 'index'" do
    	it "should expose all users as @users" do
        @users = [mock_model(User)]
        User.stub!(:all).and_return(@users)
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

    # PUT /users/1
    #--------------------------------------------------  
    describe "PUT 'update'" do
        before(:each) do
          @user = mock_model(User, :update_attributes => true)
          User.stub!(:find).and_return(@user)
        end

        it "should find the requested user" do
          User.should_receive(:find).with(@current_user.id).and_return(@user)
          put :update, :id => @user.id
        end

        it "should update the user object's attributes" do
          @user.should_receive(:update_attributes).and_return(true)
          put :update, :id => 1
        end

        it "should set a flash notice" do
          put :update, :id => 1
          flash[:notice].should_not be_blank
        end

        it "should redirect to the user's show page" do
          put :update, :id => 1
          response.should redirect_to(@user)
        end

      context "with invalid params" do
        it "should render the [edit] template" do
          @user = mock_model(User, :update_attributes => false)
          User.stub!(:find).and_return(@user)

          put :update, :id => @user.id
          response.should render_template('users/edit')
        end
      end
    end
  end

  context "when not signed in" do

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
    			flash[:success].should_not be_blank 
    		end

    		it "redirects to the user show page" do
    			post :create, :user => @params
    			response.should redirect_to(login_url)
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
  end
end

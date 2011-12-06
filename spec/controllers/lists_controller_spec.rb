require 'spec_helper'

describe ListsController do
  before(:each) do
    @current_user = Factory(:user)
    controller.stub!(:current_user).and_return(@current_user)
  end

	# GET /lists
	#-----------------------------------------------------------
  describe "responding to GET index" do

    it "exposes all lists as @lists and render the [index] template" do
    	@user.lists.build = [Factory(:list)]
    	get :index
    	assigns[:lists].should == @lists
      response.should render_template('lists/index')
    end

    it "should show all lists the user is authorized on" do
      @user.lists.build = [Factory(:list)]
      get :index
      assigns[:lists].should eq(@lists)
    end

    it "should not show lists the user is not authorized for" do
      @lists = [Factory.create(:list, :id => "2", :name => "Sauron")]
      @list_shares = [Factory.create(:list_shares)]
      get :index
      assigns[:lists].should_not eq(@lists)
    end
  end

  # GET /lists/1
  #-----------------------------------------------------------
  describe "responding to GET show" do
  	it "should expose the requested list as @list" do
  		@list = Factory(:list)
      get :show, :id => @list.id
  		assigns[:list].should == @list
      response.should render_template('lists/show')
  	end
  end

  # GET /lists/new
  #-----------------------------------------------------------
  describe "responding to GET new" do
    it "should expose a new list as @list and render the [new] template" do
      @list = List.new
      get :new
      assigns[:list].attributes.should == @list.attributes
      response.should render_template('lists/new')
    end
  end

  # GET /lists/1/edit
  #-----------------------------------------------------------
  describe "responding to GET edit" do
    it "should expose the requested list as @list and render the [edit] template" do
      @list = Factory(:list)
      get :edit, :id => @list.id
      assigns[:list].should == @list
      response.should render_template('lists/edit')
    end
  end

  # POST /lists
  #-----------------------------------------------------------
  describe "responding to POST create" do
    before(:each) do
      @list = mock_model(List, :save => nil)
      @params = { "name" => "Groceries" }
      List.stub(:new).and_return(@list)
    end

    it "creates a new list" do
      List.should_receive(:new).with(@params).and_return(@list)
      post :create, :list => @params
    end

    it "saves the new list" do
      @list.should_receive(:save)
      post :create, :list => @params
    end

    context "when the list saves successfully" do
      before(:each) do
        @list.stub(:save).and_return(true)
      end

      it "sets a flash[:notice] message" do
        post :create, :list => @params
        flash[:notice].should == "List added"
      end

      it "redirects to the lists index" do
        post :create, :list => @params
        response.should redirect_to(lists_path)
      end
    end

    context "when the list does not save successfully" do
      it "renders the [new] template" do
        @list.stub(:save).and_return(false)
        post :create, :list => @params
        response.should render_template('lists/new')
      end
    end
  end


  # PUT /lists/1
  #-----------------------------------------------------------
  describe "responding to PUT update" do
    before(:each) do
      @list = mock_model(List, :update_attributes => true)
      List.stub!(:find).with("1").and_return(@list)
    end

    describe "with valid params" do

      it "should find list and return object" do
        List.should_receive(:find).with("1").and_return(@list)
        put :update, :id => "1", :list => {}
      end

      it "should update the list object's attributes" do
        @list.should_receive(:update_attributes).and_return(true)
        put :update, :id => "1", :list => {}
      end

      it "should have a flash notice" do
        put :update, :id => "1", :list => {}
        flash[:notice].should_not be_blank
      end

      it "should redirect to the list's show page" do
        put :update, :id => "1", :list => {}
        response.should redirect_to(list_url(@list))
      end
    end

    describe "with invalid params" do
      before(:each) do
        @list = mock_model(List, :update_attributes => false)
        List.stub!(:find).with("1").and_return(@list)
      end

      it "should update the list object's attributes" do
        @list.should_receive(:update_attributes).and_return(false)
        put :update, :id => "1", :list => {}
      end

      it "should render the [edit] template" do
        put :update, :id => "1", :list => {}
        response.should render_template('lists/edit')
      end
    end
  end


  # DELETE /lists/1
  #-----------------------------------------------------------
  describe "responding to DELETE destroy" do
    

    it "should find the requested list" do
      List.should_receive(:find).with("1").and_return(@list)
      delete :destroy, :id => "1", :list => {}
    end

    describe "success" do
      before(:each) do
        @list = mock_model(List)
        List.stub!(:find).with("1").and_return(@list)
      end

      it "should redirect to the list [index] url" do
        delete :destroy, :id => "1"
        response.should redirect_to(lists_url)
      end

      it "should set a flash notice" do
        delete :destroy, :id => "1"
        flash[:notice].should == "List deleted"
      end
    end

    # describe "failure" do
    #   before(:each) do
    #     @list = mock_model(List, :destroyed => false)
    #     List.stub!(:find).with("1").and_return(@list)
    #   end

      # it "should render the list [show] template" do
      #   delete :destroy, :id => "1"
      #   response.should render_template('lists/show')
      # end

      # it "should set a flash failure notice" do
      #   delete :destroy, :id => "1"
      #   flash[:notice].should == "Delete list failed"
      # end
    # end
  end
      

  

end

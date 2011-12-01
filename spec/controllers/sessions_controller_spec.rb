require 'spec_helper'

describe SessionsController do

	# GET /sessions/new
	#--------------------------------------------------
	describe "GET 'new'" do
		it "returns a http status 200" do
			get :new
			response.should be_success
		end
	end

	# POST /sessions
	#--------------------------------------------------
	describe "POST 'create'" do

		context "with successful authentication" do
			before(:each) do
				@user = Factory(:user)
				#puts @user.to_yaml
				#puts @user.intance_method_names
				@params = { :email => "frodo@middle_earth.net", 
										:password => "thering" }
			end

			# it "should set session[:user_id] with user.id" do
			# 	post :create, :params => @params
			# 	session[:user_id].should == @user.id
			# end

			# it "should redirect to the user show page" do
			# 	post :create, :session => @params
			# 	response.should redirect_to user_url(@user.id)
			# end

			it "should set a flash[:notice]" do
				post :create, :session => @params
				:notice.should_not be_blank
			end
		end

		context "with unsuccessful authentication" do
			before(:each) do
				@user = Factory(:user)
				@params = { :email => "frodo@middle_earth.net",
										:password => "bilbo" }
			end

			it "should set a flash[:notice]" do
				post :create, :session => @params
				:notice.should_not be_blank
			end

			it "should render the [new] template" do
				post :create, :session => @params
				response.should render_template('sessions/new')
			end
		end
	end

	# DELETE /sessions
	#--------------------------------------------------
	describe "DELETE 'destroy'" do

		it "should delete the session" do
			delete :destroy
			session[:user_id].should == nil
		end

		it "should redirect to root_url" do
			delete :destroy
			response.should redirect_to(root_url)
		end
	end
end

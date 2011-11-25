class SessionsController < ApplicationController
	#force_ssl
	
	def new
	end

	def create
		# Railscast example did not need [:session][:email/password]
		# Tests fail without it
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_url(current_user.id), :notice => "Logged in"
		else
			flash[:error] =  "Invalid email or password"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end

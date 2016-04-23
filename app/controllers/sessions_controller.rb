class SessionsController < ApplicationController 

	def new		
	end

	def create
		begin
	    auth = request.env["omniauth.auth"]
	    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
	    session[:user_id] = user.id
	    user.update_attributes(:admin => true) if is_admin?
	    flash[:success] = "Welcome, #{user.email}!"
	     rescue
	    flash[:warning] = "There was an error while trying to authenticate you.."
	  	end
	    redirect_to root_url
	end

	def destroy
	  if current_user
	    session.delete(:user_id)
	    flash[:success] = 'See you!'
	  end
	  redirect_to root_path
	end

end

class SessionsController < ApplicationController
def create
if user = User.authenticate(params[:email], params[:password])
session[:user_id] = user.id
if user.email == "admin@blogspot.com"
	redirect_to admin_index_path, :notice => "Logged in successfully"
	else
 redirect_to root_path, :notice => "Logged in successfully"
 end
else
flash.now[:alert] = "Invalid login/password combination"
render :partial => 'new'
end
end
def destroy
reset_session
redirect_to root_path, :notice => "You successfully logged out"
end

end

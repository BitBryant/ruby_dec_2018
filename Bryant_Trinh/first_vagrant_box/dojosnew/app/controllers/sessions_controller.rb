class SessionsController < ApplicationController
    def new
    end
    def index
    end
    def create
    	@user = User.find_by(email: login_params[:email])
  		if @user && @user.authenticate(login_params[:password])
  	  		flash[:notice] = ['User successfully created']
   	  		current_user = @user
   	  		session[:user_id] = @user.id
      		redirect_to "/users/#{@user.id}"
    	else 
      		flash[:errors] = ['Invalid Combination']
       		redirect_to "/sessions/new"
        end  
    end
    def show 
  		@user = User.find(params[:id])
  	end
    def destroy
    	current_user = nil
    	session[:user_id] = nil
    	redirect_to "/sessions/new"
    end
    def join
    	if params[:password] == params[:password_confirmation]
			@user =User.create
			redirect_to '/sessions/new'
		else
			flash[:errors] = ["can't be blank"]
       		redirect_to "/users/new"
       	end
    end

    def login_params
    	params.require(:user).permit(:name, :email, :password)

    end
end
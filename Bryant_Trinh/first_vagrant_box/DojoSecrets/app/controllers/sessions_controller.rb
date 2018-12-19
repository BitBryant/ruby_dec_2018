class SessionsController < ApplicationController
    def new
    end
    def index
    end
    def edit
      @user = User.find(params[:id])
    end
    def join
      @user =User.new(user_params)
      if @user.valid?
        @user.save
        redirect_to '/sessions/new'
      else
        flash[:errors] = ["can't be blank"]
        redirect_to "/users/new"
      end
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
    	session.delete(:user_id)
    	redirect_to "/sessions/new"
    end
    def delete
      current_user = nil
      session.delete(:user_id)
      redirect_to "/users/new"
    end
    def update
      @user = User.find(params[:id])
      if @user.valid?
        @user= User.update(update_params)
        redirect_to "/users/#{@user.id}"
      else
        flash[:errors] = ['Email is invalid']
        redirect_to "/users/#{@user.id}/edit"
      end
    end
    def login_params
    	params.require(:user).permit(:name, :email, :password)
    end
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    def update_params
      params.require(:user).permit(:name, :email)
    end
end
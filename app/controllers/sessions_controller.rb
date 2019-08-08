class SessionsController < ApplicationController

	def signin
		@user = User.new
	end

	def create
	  @user = User.find_by(id: params[:user][:id]) 
	  if @user && @user.authenticate(params[:user][:id]) 
	    session[:user_id]=@user.id 
	    redirect_to user_path(@user)
	  else 
	    flash[:error]= " Login Incorrect"
	    render 'sessions/signin'
	  end 
	  
	end 
	
	def destroy 
	  session.delete 
	  redirect_to root_path 
	  
	end 
	
	end 
class SessionsController < ApplicationController
  def new
  	puts "==============new session==============+=="
  	puts "------------------------------------------"
  end

  def create
  	puts "============create session================"
  	user = User.find_by(email: params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		redirect_to user
  	else
  		flash.now[:danger] = "Invalid email or/and password !"
  		render 'new'
  	end
  	puts "------------------------------------------"
  end

  def destroy
  	puts "============destroy session==============="
    log_out
    redirect_to home_path
  	puts "------------------------------------------"
  end

end

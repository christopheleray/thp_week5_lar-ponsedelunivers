class UsersController < ApplicationController
  def new
  	puts "=================new=============================="
    @user = User.new
    puts "---------------------end--------------------------"
  end

  def create
  	puts "====================create========================"
    puts params.inspect
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome :)"
      redirect_to @user
    else
      render 'new'
    end
     
    puts "---------------------end--------------------------"
  end

  def show
    puts "--------------------show--------------------------"
    if current_user
    @user = User.find(params[:id])
  else
    redirect_to login_path
  end
    puts "---------------------end--------------------------"
  end

  def edit
  	puts "====================edit=========================="
  	puts "---------------------end--------------------------"
  end

  def delete
  	puts "====================delete========================"
  	puts "---------------------end--------------------------"
  end

  def update
  	puts "=====================update======================="
  	puts "---------------------end--------------------------"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

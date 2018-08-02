class UsersController < ApplicationController
  def new
  	puts "=================new=============================="
    @user = User.new
    puts "---------------------end--------------------------"
  end

  def create
  	puts "====================create========================"
    user = User.create(user_params)
    puts params.inspect
    redirect_to home_path
    puts "---------------------end--------------------------"
  end

  def show
    puts "--------------------show--------------------------"
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

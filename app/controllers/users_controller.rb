class UsersController < ApplicationController
  
def index
  render 'users/sign_up'
end
  def create
    @user = User.new
    if @user.save
     redirect_to root_path
    else
     render 'users/sign_up'
    end
  end
end

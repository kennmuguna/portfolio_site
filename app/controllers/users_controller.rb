class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up"
      redirect_to "/skills"
    else
      flash[:alert] = "There was a problem creating your account. Please Try again"
      redirect_to :back
    end
  end

  def edit
    @user = User.find(user_params)
  end

  private 
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end

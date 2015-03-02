class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create
    @user=User.new(create_user)
    if @user.save
      redirect_to root_url, notice: "Thank you for Signing up"
    else
      render 'new'
    end
  end
end

  def create_user
    params.require(:user).permit(:email,:first_name,:last_name,:profile_name,:password,:password_confirmation)
  end

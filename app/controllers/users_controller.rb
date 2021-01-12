# main user controller
class UsersController < ApplicationController
  def index
    # @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # render plain: params[:user].inspect
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def destroy
    @user = Article.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end

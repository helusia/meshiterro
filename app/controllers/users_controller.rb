class UsersController < ApplicationController
  def edit
    @user=User.find(params[:id])
  end

  def update
    @user = User.find(user_params)
    @user.update
    redirect_to user_path(@user.id)
  end

  def show
    @user =User.find(params[:id])
    @post_images = @user.post_images
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end


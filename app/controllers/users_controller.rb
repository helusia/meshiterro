class UsersController < ApplicationController
  def edit
  end

  def show
    @user =User.find(params[:id])
    @post_images = @user.post_images 
  end
end


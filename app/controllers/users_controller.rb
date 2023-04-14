class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def index
  @book = Book.new
  @current_user = current_user
  @users = User.all
end

def show
  @book = Book.new
  @user = User.find(params[:id])
  @books = @user.books
end

def update
  user = User.find(params[:id])
  user.update(user_params)
  flash[:notice] = "You have updated user successfully."
  redirect_to user_path(user.id)
end

def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
end

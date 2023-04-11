class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
   @books = @user.books
  end

  def edit
  end

  def index
  @book = Book.new
  @current_user = current_user
  @users = User.all
end

def show
  @book = Book.find(params[:id])
  @user = @book.user
  @books = @user.books
end
  
end

class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
   @books = @user.books
  end

  def edit
  end

  def index
  @book = Book.new
  @user = @book.user
  @users = User.all
  end
  
end

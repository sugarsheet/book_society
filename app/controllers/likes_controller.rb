class LikesController < ApplicationController
  before_action :find_book

  def create
    @book.likes.create(user_id: current_user.id)
    redirect_to book_path(@book)
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @book.likes.create(user_id: current_user.id)
    end

  end

  private

  def find_book
    @book = Book.find(params[:book_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, book_id:
    params[:book_id]).exists?
  end

end

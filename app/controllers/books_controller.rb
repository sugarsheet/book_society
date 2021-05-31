class BooksController < ApplicationController

  def index
    @user = current_user
    @books = @user.books
    recommended
  end

  def recommended

   @user = current_user
   if  @user.recommended_books.exists?
        @recommended_books = @user.recommended_books
   else
       @recommended_books = []
   end

    @books = Book.order(title: :desc)

    if params[:query].present?
      # @books = @books.where('title ILIKE ?', "%#{params[:query]}%")
      @books = Book.global_search(params[:query])
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { books: @books } }
    end
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new

  end

  def toggle_favorite
    @user = current_user
    @book = Book.find(params[:id])
    if @user.favorited?(@book)
      @user.unfavorite(@book)
    else
      @user.favorite(@book)
    end
    redirect_to new_book_review_path(@book)

  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :isbn, :author_id, :photo)
  end
end

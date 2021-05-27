class BooksController < ActionController::Base

  def index
    @books = Book.order(title: :desc)

    if params[:query].present?
      @books = @books.where('title ILIKE ?', "%#{params[:query]}%")
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

end

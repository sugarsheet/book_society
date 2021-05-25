class BooksController < ActionController::Base

  def index
  Book.global_search(params[:query])
  #  call book.global_search in rails c
  end

end

class BooksController < ActionController::Base

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
  end

end

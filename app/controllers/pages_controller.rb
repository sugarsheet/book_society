class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @my_read_books = current_user.books
    @reviews = current_user.reviews.order(created_at: :desc)
    if params[:query].present?
      # @books = @books.where('title ILIKE ?', "%#{params[:query]}%")
      @books = Book.global_search(params[:query])
      @books = @books.select do |book|
        !@user.books.include?(book)
      end
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { books: @books } }
    end
  end

  def signup
    if user_signed_in?
      redirect_to dashboard_path(@book)
    else
     redirect_to signup_path
    end
  end
end

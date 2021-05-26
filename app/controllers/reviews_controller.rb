class ReviewsController < ApplicationController
  has_many :books
  belongs_to :users

  def new
   @review = review.all
  end


  def create
    @book = Book.find(params[:books_id])
    @review = Review.new(review_params)
    @review.book = @book
    @review.user = current_user
    if @review.save
      #  create recommandation private action
      redirect_to book_path(@book), notice: "Your review is added!"

    else
      redirect_to dashboard_path(@book)
    end
  end

  private

  def review_params
    params.require(:books).permit(:title, :description, :isbn)
  end

  def create_recommendation
    # si l'ID est égal au current_user.id on le met pas dans l'array
    @user= User.find(2)
    other_users = []
    recommended_books = []
    @user.books.each do|book|
      book.reviews.each do |review|
        unless review.user_id == @user.id
          other_users << User.find(review.user_id)
        end
      end
    end


    p other_users

    # si le book est déjà dans l'array, on le met pas dans l'array
    other_users.each do |user|
      user.books.each do |book|
        unless recommended_books.include? book
          recommended_books << book
        end
      end
    end

  end

end

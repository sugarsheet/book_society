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
    # todo create recommendation
  end

end

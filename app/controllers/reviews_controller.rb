class ReviewsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book = @book
    @review.user = current_user
    if @review.save
<<<<<<< HEAD
    redirect_to book_path(@book), notice: "Your review is added!"
=======
      redirect_to dashboard_path
>>>>>>> 66d44fcc65133f85df29b265fbb5cf80b7049456
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :description, :isbn)
  end

end

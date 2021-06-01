class ReviewsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def blank_stars
  5 - rating.to_i
  end

  def create
    @user = current_user
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book = @book
    @review.user = @user
    @user = current_user
    if @review.save
      redirect_to favorites_path(@book)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :top)
  end

  def delete_recommendation_from_base
    reco = RecommendedBook.find_by(user_id: @user.id, book_id: @Book.id)
    reco.destroy if reco
  end


  def create_recommendation
    # si l'ID est égal au current_user.id on le met pas dans l'array
    @user = current_user
    other_users = []
    @recommended_books = []
    @user.books.each do|book|
      book.reviews.each do |review|
        unless review.user_id == @user.id
          other_users << User.find(review.user_id)
        end
      end
    end

    # si le book est déjà dans l'array, on le met pas dans l'array
    other_users.each do |user|
      user.books.each do |book|
        unless @user.books.include? book or @recommended_books.include? book
        # book.reviews.each do |review|
        #   if review.top
        #     book.score += 1
        #   end
        end
        @recommended_books << book
      end
    end
    p @recommended_books
    @recommended_books.each do |reco_book|
      unless RecommendedBook.find_by(user_id:@user.id, book_id:reco_book.id)
        r = RecommendedBook.new
        r.book_id = reco_book.id
        r.user_id = @user.id
        r.save!
      end
    end
  end
end

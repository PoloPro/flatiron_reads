class ReviewsController < ApplicationController

  def index 
   @reviews = Review.all
 end

 def show 
   @review = Review.find(params[:id])
 end

 def new 
   @review = Review.new
 end

 def edit 
   @review = Review.find(params[:id])
 end

 def create
   @review = Review.new(review_params)
   @review.save

   redirect_to "/books/#{review_params[:book_id]}" 
 end

 def update
   @review = Review.find(params[:id])
   @review.update(review_params)

   redirect_to "/books/#{review_params[:book_id]}" 
 end

 def destroy
   @review = Review.find(params[:id])
   @book = Book.find(@review.book_id)
   @review.destroy
   flash[:notice] = "Review deleted."
   redirect_to @book
 end

 private 
 
 def review_params
   params.require(:review).permit(:user_name, :book_id, :rating, :description)
 end

end

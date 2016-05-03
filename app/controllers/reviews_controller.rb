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
   
   if @review.save
     redirect_to @review 
   else
     render :new
   end

 end

 def update
   @review = Review.find(params[:id])
   @review.update(review_params)

   if @review.save 
     redirect_to @review 
   else 
     render :edit
   end

 end

 def destroy
   @review = Review.find(params[:id])
   @review.destroy
   flash[:notice] = "Review deleted."
   redirect_to reviews_path
 end

 private 
 
 def review_params
   params.require(:review).permit(:user_id, :book_id, :rating, :description)
 end

end

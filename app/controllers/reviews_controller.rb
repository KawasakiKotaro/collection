class ReviewsController < ApplicationController
    
    def index
        @reviews = Review.all
    end
    
    def new
        @review=Review.new 
    end
    
    def create
        Review.create(review_params)
    end
    
    def show
        @review = Review.find(params[:id])
    end
    
    def edit
        @review = Review.find(params[:id])
    end
    
    
    private
    def review_params
        params.require(:review).permit(:image, :text, :title, :rate)
    end
    
end

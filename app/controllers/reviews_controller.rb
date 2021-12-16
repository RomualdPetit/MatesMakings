class ReviewsController < ApplicationController
    before_action :find_user
	before_action :find_review, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)       
		@review.user_review_id = @user_review.id
		@review.user_id = current_user.id

		if @review.save
			redirect_to root_path
		else
			render 'new'
            
		end
	end

	def edit
	end

	def update
		if @review.update(review_params)
			redirect_to book_path(@book)
		else
			render 'edit'
		end
	end

	def destroy
		@review.destroy
		redirect_to book_path(@book)
	end

	private

		def review_params
			params.require(:review).permit(:rating, :comment)
		end

		def find_user
			@user_review = UserReview.find(params[:user_review_id])
		end

		def find_review
			@review = Review.find(params[:id])
		end


end

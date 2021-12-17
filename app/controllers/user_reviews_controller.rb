class UserReviewsController < ApplicationController
  before_action :set_user_review, only: %i[ show edit update destroy ]

 
  # GET /user_reviews/1 or /user_reviews/1.json
  def show
    
		if @user.reviews.blank?
			@average_review = 0
		else
		end
	end

  # GET /user_reviews/new
  def new
    @user_review = UserReview.new
  end

  # GET /user_reviews/1/edit
  def edit
  end

  # POST /user_reviews or /user_reviews.json
  def create
    @user = User.find(params[:id])
    @user_review = UserReview.new(user: @user)

    respond_to do |format|
      if @user_review.save
        format.html { redirect_to @user_review, notice: "User review was successfully created." }
        format.json { render :show, status: :created, location: @user_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_reviews/1 or /user_reviews/1.json
  def update
    respond_to do |format|
      if @user_review.update(user_review_params)
        format.html { redirect_to @user_review, notice: "User review was successfully updated." }
        format.json { render :show, status: :ok, location: @user_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_reviews/1 or /user_reviews/1.json
  def destroy
    @user_review.destroy
    respond_to do |format|
      format.html { redirect_to user_reviews_url, notice: "User review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_review
      @user_review = UserReview.find(params[:id])
    end
 
end

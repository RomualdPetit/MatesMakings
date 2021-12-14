require 'test_helper'

class UserReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_review = user_reviews(:one)
  end

  test "should get index" do
    get user_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_user_review_url
    assert_response :success
  end

  test "should create user_review" do
    assert_difference('UserReview.count') do
      post user_reviews_url, params: { user_review: {  } }
    end

    assert_redirected_to user_review_url(UserReview.last)
  end

  test "should show user_review" do
    get user_review_url(@user_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_review_url(@user_review)
    assert_response :success
  end

  test "should update user_review" do
    patch user_review_url(@user_review), params: { user_review: {  } }
    assert_redirected_to user_review_url(@user_review)
  end

  test "should destroy user_review" do
    assert_difference('UserReview.count', -1) do
      delete user_review_url(@user_review)
    end

    assert_redirected_to user_reviews_url
  end
end

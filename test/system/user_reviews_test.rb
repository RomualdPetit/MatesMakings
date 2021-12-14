require "application_system_test_case"

class UserReviewsTest < ApplicationSystemTestCase
  setup do
    @user_review = user_reviews(:one)
  end

  test "visiting the index" do
    visit user_reviews_url
    assert_selector "h1", text: "User Reviews"
  end

  test "creating a User review" do
    visit user_reviews_url
    click_on "New User Review"

    click_on "Create User review"

    assert_text "User review was successfully created"
    click_on "Back"
  end

  test "updating a User review" do
    visit user_reviews_url
    click_on "Edit", match: :first

    click_on "Update User review"

    assert_text "User review was successfully updated"
    click_on "Back"
  end

  test "destroying a User review" do
    visit user_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User review was successfully destroyed"
  end
end

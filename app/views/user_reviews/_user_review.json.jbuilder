json.extract! user_review, :id, :created_at, :updated_at
json.url user_review_url(user_review, format: :json)

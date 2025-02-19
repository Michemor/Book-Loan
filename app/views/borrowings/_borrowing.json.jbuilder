json.extract! borrowing, :id, :user_id, :book_id, :user_name, :book_title, :borrowed_at, :returned_at, :created_at, :updated_at
json.url borrowing_url(borrowing, format: :json)

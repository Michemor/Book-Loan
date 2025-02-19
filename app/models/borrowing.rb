class Borrowing < ApplicationRecord

  validates :user_name, :book_title, :borrowed_at, presence: true


end

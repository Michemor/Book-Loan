class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :user_name, :book_title, :borrowed_at, presence: true
end

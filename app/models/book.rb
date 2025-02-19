class Book < ApplicationRecord
  has_many :users

  validates :title, :author, presence: true
end

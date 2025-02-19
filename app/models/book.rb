class Book < ApplicationRecord
  validates :title, :author, presence: true
  validates :available_copies, numericality: { greater_than: 0 }

  # checks that the number of copies are always more than 0 for a borrowing transaction
  def borrow
    return false if available_copies <= 0

    update(available_copies: available_copies - 1)
  end
  
  def return_book
    update(available_copies: available_copies + 1)
  end
end

class RemoveBookIdFromBorrowings < ActiveRecord::Migration[8.0]
  def change
    remove_column :borrowings, :book_id, :integer
  end
end

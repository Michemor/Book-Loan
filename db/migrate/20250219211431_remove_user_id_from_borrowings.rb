class RemoveUserIdFromBorrowings < ActiveRecord::Migration[8.0]
  def change
    remove_column :borrowings, :user_id, :integer
  end
end

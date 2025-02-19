require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "shoudl not create a book without title and author" do
    book = Book.new
    assert_not book.save
  end

end

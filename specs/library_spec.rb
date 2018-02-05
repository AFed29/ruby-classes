require('minitest/autorun')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @book_1 = Library.new("Lord of the Rings", "Kishan", "26/02/2018")
  end

  def test_return_book
    book = @book_1.book()
    assert_equal({
    title: "Lord of the Rings",
    rental_details: {
     student_name: "Kishan",
     date: "26/02/2018"
    }
  }, book)
  end




end

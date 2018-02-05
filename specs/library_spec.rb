require('minitest/autorun')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @books = Library.new(
      [
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        }
      ]
    )
  end

  def test_return_book_from_library
    books = @books.books()
    expected_result = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    ]
    assert_equal(expected_result, books)
  end

  def test_search_book_by_title
    search_result = @books.search_by_title("lord_of_the_rings")
    expected_result = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
    assert_equal(expected_result, search_result)
  end

  def test_search_rental_details_by_title
    rental_details = @books.rental_details_search_by_title("lord_of_the_rings")
    expected_result =
    {
      student_name: "Jeff",
      date: "01/12/16"
    }
    assert_equal(expected_result, rental_details)
  end

  def test_add_new_book_to_library
    @books.add_new_book_to_library("harry_potter")
    books = @books.books()
    expected_result = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "",
          date: ""
        }
      }
    ]
    assert_equal(expected_result, books)
  end

  def test_change_rental_details
    @books.change_rental_details("lord_of_the_rings", "Bob", "17/03/18")
    books = @books.books()
    expected_result = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Bob",
          date: "17/03/18"
        }
      }
    ]
    assert_equal(expected_result, books)
  end

end

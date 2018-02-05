class Library

  attr_reader :books

  def initialize(books = [])
    @books = books
  end

  def search_by_title(title)
    for book in @books
      return book if book[:title] == title
    end
  end

  def rental_details_search_by_title(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end

  def add_new_book_to_library(new_book)
    @books.push(
      {
        title: new_book,
        rental_details: {
          student_name: "",
          date: ""
        }
      }
    )
  end

  def change_rental_details(title, name, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = name
        book[:rental_details][:date] = date
      end
    end
  end

end

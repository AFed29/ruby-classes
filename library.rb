class Library

  attr_reader :book

  def initialize(title, renter, date)
    @book = {
    title: title,
    rental_details: {
     student_name: renter,
     date: date
    }
  }
  end

end

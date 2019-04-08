class Library

  attr_accessor :books

  def initialize(books)
    @books=books
  end

  def find_book(title)
    for book in @books
     book if book[:title] == title
    end
  end

  def rental_info(title)
    for book in @books
      return book[:rental_details] if book[:title]==title
    end
  end

  def add_new_book_to_library(title)
    @books.push({
      :title => title,
      :rental_details => {
        :student_name =>"",
        :date => ""
      }
    })
  end

  def change_rental_details(title,student_name,date)
    rental_info(title)[:student_name] = student_name
    rental_info(title)[:date]= date
  end


end

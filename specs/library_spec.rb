require('minitest/autorun')
require('minitest/rg')
require_relative('../library')




class TestLibrary < Minitest::Test

  def setup

   @books = [
     {title:"James and the Giant Peach",
       rental_details:{
         student_name: "bob",
         date: "01/12/18"
       }
     },
      {title:"cat in the hat",
        rental_details:{
          student_name: "George",
          date: "25/12/18"
        }
       }
   ]

  end




  def test_is_the_book_in_the_library
    library = Library.new(@books)
    result = library.find_book('cat in the hat')
    assert_equal(@books[1],result)
  end

  def test_find_a_book_and_give_rental_info
    library = Library.new(@books)
    result = library.rental_info('cat in the hat')
    assert_equal(@books[1][:rental_details], result)
  end

  def test_adding_book_to_library
    library = Library.new(@books)
    result = library.add_new_book_to_library('Under the Dome')
    assert_equal(3, @books.count)
  end

  def test_change_the_rental_details
    library = Library.new(@books)
    result = library.change_rental_details('cat in the hat','Helen','12th March')
    assert_equal('cat in the hat', find_book('cat in the hat'))
    assert_equal('Helen', rental_info('cat in the hat')[:student_name])
    assert_equal('12th March',rental_info('cat in the hat')[:date])
  end

end

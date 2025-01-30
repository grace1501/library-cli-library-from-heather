
require 'minitest/autorun'
require_relative '../library'  
require_relative '../book'  

class TestLibrary < Minitest::Test
  def setup
    # Set up the library instance and add some books
    @library = Library.new
    @book1 = Book.new("The Great Gatsby", "F. Scott Fitzgerald", "Fiction")
    @book2 = Book.new("Sapiens", "Yuval Noah Harari", "Non-Fiction")
    @library.add_book(@book1.title, @book1.author, @book1.genre)
    @library.add_book(@book2.title, @book2.author, @book2.genre)
  end

  def test_add_book
    # Check if the library has 2 books after adding 2 books
    assert_equal 2, @library.instance_variable_get(:@books).size
  end

  def test_list_all_books
    # Check if the books are listed properly
    assert_output(/Fiction The Great Gatsby by F. Scott Fitzgerald /) { @library.list_all }
    assert_output(/Non-Fiction Sapiens by Yuval Noah Harari/) { @library.list_all }
  end
end

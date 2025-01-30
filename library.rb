require_relative "book"

class Library
  def initialize
    @books = []
  end #initialize

  def books
    return @books
  end

  def list_by_genre
    puts "What genre are you interested in?"
    puts "1. Fiction"
    puts "2. Non-fiction"
    puts "3. Poetry"
    puts "4. Romance"
    puts "5. Thiller/ Horror"
    puts "6. Sci-Fi"
    puts "7. Spirituality"
    puts "8. Young-Adult"
    puts "9. Children"
    puts "0. All categories"
    puts "select a genre"

    genres = gets.chomp.to_i

    case genres
    when 1 
      puts fiction_list
    when 2
      puts nonfiction_list
    when 3
      puts poetry_list
    when 4
      puts romance_list
    when 5
      puts thriller_horror_list
    when 6
      puts scifi_list
    when 7
      puts spirit_list
    when 8
      puts yadult_list
    when 9
      puts child_list
    when 0
      puts list_all
    else
      puts "Invalid choice, please select a genre."
      puts "What genre are you interested in?"
      puts "1. Fiction"
      puts "2. Non-Fiction"
      puts "3. Poetry"
      puts "4. Romance"
      puts "5. Thiller/ Horror"
      puts "6. SciFi"
      puts "7. Spirituality"
      puts "8. Young-Adult"
      puts "9. Children"
      puts "0. All categories"
    end #case
  end #list_by_genre

  def fiction_list

    puts "All Fiction Books in the Library"
    @books.each do |book|
      if genre == Fiction
        puts book
      end #if
    end #do
  end #fiction_list
    
  def nonfiction_list

    puts "All Non-Fiction Books in the Library"
    @books.each do |book|
      if genre == Nonfiction
        puts book
      end #if
    end #do
  end #nonfiction_list
      
  def poetry_list

    puts "All Poetry Books in the Library"
    @books.each do |book|
      if genre == Poetry
        puts book
      end #if
    end #do
  end #poetry_list

  def romance_list

    puts "Romance Books in the Library"
    @books.each do |book|
      if genre == Romance
        puts book
      end #if
    end #do
  end #romance_list

  def thriller_horror_list

    puts "All Thriller and Horror Books in the Library"
    @books.each do |book|
      if genre == Thriller || genre == Horror
        puts book
      end #if
    end #do
  end #thriller_horror_list

  def Scifi_list

    puts "All Sci Fi Books in the Library"
    @books.each do |book|
      if genre == SciFi
        puts book
      end #if
    end #do
  end #scifi_list

  def spirit_list

    puts "All Spirituality Books in the Library"
    @books.each do |book|
      if genre == Spirituality
        puts book
      end #if
    end #do
  end #spirit_list

  def yadult_list

    puts "All Young-Adult Books in the Library"
    @books.each do |book|
      if genre == Young-Adult
        puts book
      end #if
    end #do
  end #yadult_list

  def children_list

    puts "All Children Books in the Library"
    @books.each do |book|
      if genre == Children
        puts book
      end #if
    end #do
  end #child_list

  def list_all
        puts "All the books in the collection:"
        @books.each do |book|
          puts book
        end #do
  end #list_all

  def add_book
    print "Enter book title: "
      title = gets.chomp
    print "Enter author name: "
      author = gets.chomp
    puts "Enter genre from the list"
    puts "Fiction"
    puts "Non-Fiction"
    puts "Poetry"
    puts "Romance"
    puts "Thiller"
    puts "Horror"
    puts "SciFi"
    puts "Spirituality"
    puts "Young-Adult"
    puts "Children"
      genre = gets.chomp
      @books << Book.new(title, author, genre)
    puts "Your book has been added!"
  end #add_book

  def run
    loop do
      puts "Welcome to your virtual library!"
      puts "What would you like to do?"
      puts "1. View books by genre"
      puts "2. View the whole library"
      puts "3. Add a book"
      puts "4. Exit"
      puts "Choose an option"
      
      option = gets.chomp.to_i

      case option
      when 1
        list_by_genre
      when 2
        list_all
      when 3
        add_book
      when 4
        puts "Thank you for visiting the library!"
      else
        puts "Invalid selection, please choose a number"
        puts "What would you like to do?"
        puts "1. View books by genre"
        puts "2. View the whole library"
        puts "3. Add a book"
        puts "4. Exit"
      end #case
    end # loop do
  end #run
end #Library

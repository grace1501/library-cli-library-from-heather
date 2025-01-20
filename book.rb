class Book
  attr_accessor :title, :author, :genre

  def initialize (title, author, genre)

    @title = title
    @author = author
    @genre = genre
  end #initialize

  def to_s
    "(#{genre}) #{title} by #{author}"
  end #to_s
end #class Book



class Checkedout_Books

  def initialize (title, author, genre)

    @title = title
    @author = author
    @genre = genre
  end #initialize

  def to_s
    "(#{genre}) #{title} by #{author}"
  end #to_s
end #class Checkedout_Books

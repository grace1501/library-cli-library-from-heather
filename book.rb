class Book
  attr_accessor :title, :author, :genre

  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
  end

  def to_s
    "(#{genre}) #{title} by #{author}"
  end
end

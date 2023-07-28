require './lib/author'
class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []


  end

  def add_author(author)
    # author = Author.new(data)
    @authors << author
    author.books.each do |book|
      @books << book
    end
  end


end
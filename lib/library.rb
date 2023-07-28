require './lib/author'
class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []


  end

  def add_author(data)
    author = Author.new(data)
    @authors << author
  end


end
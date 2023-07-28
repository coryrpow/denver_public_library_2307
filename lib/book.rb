class Book
  attr_reader :title, :author, :publication_year
  def initialize(data)
    @title = data[:title]
    @author_first_name = data[:author_first_name]
    @author_last_name = data[:author_last_name]
    @author = "#{data[:author_first_name]} #{data[:author_last_name]}"
    @publication_year = data[:publication_date].split.last
  end
end
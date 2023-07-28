class Author
  attr_reader :name, :books

  def initialize(data)
    @name = "#{data[:first_name]} #{data[:last_name]}"
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @books = []

  end

  def write(title, date_written)
    attributes = {
      author_first_name: @first_name,
      author_last_name: @last_name,
      title: title,
      publication_date: date_written
      }

    book = Book.new(attributes)
    @books << book
    book
  end




end
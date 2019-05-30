class Library
  attr_accessor :authors, :books, :readers, :orders

  def initialize(authors: authors = [], books: books = [], readers: readers = [], orders: orders = [])
    @authors  = authors
    @books    = books
    @readers  = readers
    @orders   = orders
  end

  def add_object(value)
    case value
    when Author  then @authors << value
    when Book    then @books << value
    when Order   then @orders << value
    when Reader  then @readers << value
    else
      raise ArgumentError
    end
  end

  def show_statistic
    top_readers   = StatisticsLibrary.get_top(self, TOP_READER_QUANTITY, :reader)
    top_books     = StatisticsLibrary.get_top(self, TOP_BOOKS_QUANTITY, :book)
    some_quantity = StatisticsLibrary.get_readers_of_popular_books(self, SOME_QUANTITY)
    OutputLibrary.show(top_readers, top_books, some_quantity)
  end
end

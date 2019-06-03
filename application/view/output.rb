class Output
  class << self
    TOP_READER_QUANTITY = 1
    TOP_BOOKS_QUANTITY = 1
    NUMBER_OF_READERS_OF_THE_MOST_POPULAR_BOOKS = 3

    def show_statistic(lib)
      top_readers   = Statistics.get_top(lib, TOP_READER_QUANTITY, :reader)
      top_books     = Statistics.get_top(lib, TOP_BOOKS_QUANTITY, :book)
      some_quantity = Statistics.get_readers_of_popular_books(lib, NUMBER_OF_READERS_OF_THE_MOST_POPULAR_BOOKS)
      show(top_readers, top_books, some_quantity)
    end

    def show(readers = [], books = [], some_quantity)
      top_readers(readers)
      top_books(books)
      readers_top_books(some_quantity)
    end

    def top_readers(readers)
      puts '*' * 30 + 'Top readers' + '*' * 30
      readers.each { |reader| puts reader }
    end

    def top_books(books)
      puts '*' * 30 + 'most popular books' + '*' * 30
      books.each { |book| puts book }
    end

    def readers_top_books(some_quantity)
      puts '*' * 30 + 'number of readers top books' + '*' * 30
      puts some_quantity
    end
  end
end

class OutputLibrary
  def self.show(readers = [], books = [], some_quantity)
    OutputLibrary.top_readers(readers)
    OutputLibrary.top_books(books)
    OutputLibrary.readers_top_books(some_quantity)
  end

  def self.top_readers(readers)
    puts '*' * 30 + 'Top readers' + '*' * 30
    readers.each { |reader| puts reader }
  end

  def self.top_books(books)
    puts '*' * 30 + 'most popular books' + '*' * 30
    books.each { |book| puts book }
  end

  def self.readers_top_books(some_quantity)
    puts '*' * 30 + 'number of readers top books' + '*' * 30
    puts some_quantity
  end
end

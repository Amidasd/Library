class Order
  include Validation

  attr_reader :book, :reader, :date

  def initialize(book:, reader:, date: Date.today)
    @book   = book
    @reader = reader
    @date   = date
    validtion
  end

  def validtion
    class?(@book, Book)
    class?(@reader, Reader)
    class?(@date, Date)
  end
end

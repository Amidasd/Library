class Order
  include Validation
  attr_reader :book, :reader, :date
  def initialize(book:, reader:, date: Date.today)
    @book   = book
    @reader = reader
    @date   = date
    valid_class?(book, Book)
    valid_class?(reader, Reader)
    valid_class?(date, Date)
  end
end
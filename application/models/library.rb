class Library
  attr_accessor :authors, :books, :readers, :orders

  def initialize(authors: [], books: [], readers: [], orders: [])
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
end

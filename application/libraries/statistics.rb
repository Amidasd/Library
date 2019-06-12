class Statistics
  class << self
    def get_readers_of_popular_books(lib, quantity)
      books = get_top(lib, quantity, :book)
      lib.orders
         .select { |order| books.include? order.book }
         .uniq(&:reader)
         .size
    end

    def get_top(lib, quantity, value_name)
      lib.orders
         .group_by(&value_name)
         .max_by(quantity) { |_key, value| value.size }
         .map(&:first)
    end
  end
end

class DbUtility
  class << self
    AUTHORS_COUNT = 10
    BOOKS_COUNT = 100
    READERS_COUNT = 100
    ORDERS_COUNT = 100

    PATH_DB = '../../db/'.freeze
    FILE_DB = 'db.yml'.freeze

    def save_yaml_db(lib)
      yml_db = PATH_DB + FILE_DB
      File.write(yml_db, lib.to_yaml)
    end

    def load_yaml_db
      yml_db = PATH_DB + FILE_DB
      lib = YAML.load_file(yml_db)
    end

    def create_faker_db(lib)
      lib.authors = []
      AUTHORS_COUNT.times do
        lib.authors << Author.new(name: FFaker::Name.name)
      end

      lib.books = []
      BOOKS_COUNT.times do
        lib.books << Book.new(title: FFaker::Book.title,
                              author: lib.authors[rand(AUTHORS_COUNT - 1)])
      end

      lib.readers = []
      READERS_COUNT.times do
        lib.readers << Reader.new(name: FFaker::Name.name,
                                  email: FFaker::Internet.email,
                                  city: FFaker::Address.city,
                                  street: FFaker::Address.street_name,
                                  house: rand(1..100))
      end

      lib.orders = []
      ORDERS_COUNT.times do
        lib.orders << Order.new(book: lib.books[rand(BOOKS_COUNT - 1)],
                                reader: lib.readers[rand(READERS_COUNT - 1)])
      end
    end
  end
end

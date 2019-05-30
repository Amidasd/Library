module DbUtility

  def DbUtility.save_yaml_db(lib)
    yml_db = PATH_DB + FILE_DB
    File.write(yml_db, lib.to_yaml)
  end

  def DbUtility.load_yaml_db
    yml_db = PATH_DB + FILE_DB
    lib = YAML.load_file(yml_db)
  end

  def DbUtility.create_faker_db(lib)
    lib.authors = Array.new()
    AUTHORS_COUNT.times do
      lib.authors << Author.new(name: FFaker::Name.name)
    end

    lib.books = Array.new()
    BOOKS_COUNT.times do
      lib.books << Book.new(title: FFaker::Book.title,
                            author: lib.authors[rand(AUTHORS_COUNT-1)])
    end

    lib.readers = Array.new()
    READERS_COUNT.times do
      lib.readers << Reader.new(name: FFaker::Name.name,
                                email: FFaker::Internet.email,
                                city: FFaker::Address.city,
                                street: FFaker::Address.street_name,
                                house: rand(1..100))
    end

    lib.orders = Array.new()
    ORDERS_COUNT.times do
      lib.orders << Order.new(book: lib.books[rand(BOOKS_COUNT-1)],
                              reader: lib.readers[rand(READERS_COUNT-1)])
    end
  end


end


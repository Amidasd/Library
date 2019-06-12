class Book
  include Validation

  attr_reader :title, :author

  def initialize(title:, author:)
    @title    = title
    @author   = author
    validtion
  end

  def to_s
    "#{title}, #{author}"
  end

  def validtion
    string?(@title)
    class?(@author, Author)
  end
end

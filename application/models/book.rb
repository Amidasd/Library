class Book
  include Validation
  attr_reader :title, :author
  def initialize(title:, author:)
    @title    = title
    @author   = author
    valid_string?(title)
    valid_class?(author, Author)
  end

  def to_s
    "#{title}, #{author}"
  end
end
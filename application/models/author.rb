class Author
  include Validation

  attr_reader :name, :biography

  def initialize(name:, biography: '')
    @name       = name
    @biography  = biography
    validtion
  end

  def to_s
    "#{name}, #{biography}"
  end

  def validtion
    string?(@name)
  end
end

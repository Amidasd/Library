class Author
  include Validation

  attr_reader :name, :biography

  def initialize(name:, biography: '')
    @name       = name
    @biography  = biography
    valid_string?(name)
  end

  def to_s
    "#{name}, #{biography}"
  end
end

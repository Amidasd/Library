class Reader
  include Validation

  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    @name   = name
    @email  = email
    @city   = city
    @street = street
    @house  = house
    validtion
  end

  def to_s
    "#{name}, #{email}, #{city}, #{street}. #{house}"
  end

  def validtion
    string?(@name, @email, @city, @street)
    negative?(@house)
  end
end

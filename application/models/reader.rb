class Reader
  include Validation

  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    @name   = name
    @email  = email
    @city   = city
    @street = street
    @house  = house
    valid_string?(name, email, city, street)
    valid_positive_integer?(house)
  end

  def to_s
    "#{name}, #{email}, #{city}, #{street}. #{house}"
  end
end

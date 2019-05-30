module Validation
  include ValidationErrors
  def valid_string?(*array_strings)
    array_strings.each do |value|
      raise  IsNotStringError  unless value.is_a?(String)
      raise  EmptyStringError  if value.empty?
    end
  end

  def valid_positive_integer?(*array_integer)
    array_integer.each do |value|
      raise  NoNumericError        unless value.is_a?(Numeric)
      raise  NoIntegerError        unless value == Integer(value)
      raise  NegativeIntegerError  if value.negative?
    end
  end

  def valid_class?(value, valid_class)
    raise StandardError, value.to_s << ' is not ' << valid_class.to_s << '' unless value.is_a?(valid_class)
  end
end

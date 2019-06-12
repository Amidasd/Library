module Validation
  include ValidationErrors

  def string?(*array_strings)
    array_strings.each do |value|
      raise  I18n .t(:not_string) unless value.is_a?(String)
    end
  end

  def empty_string?(*array_strings)
    array_strings.each do |value|
      raise  I18n .t(:empty_string) if value.empty?
    end
  end

  def integer?(*array_integer)
    array_integer.each do |value|
      raise  I18n .t(:mo_integer) unless value == Integer(value)
    end
  end

  def negative?(*array_integer)
    array_integer.each do |value|
      raise  I18n .t(:negative_integer)  if value.negative?
    end
  end

  def class?(value, valid_class)
    raise StandardError, value.to_s << ' is not ' << valid_class.to_s << '' unless value.is_a?(valid_class)
  end
end

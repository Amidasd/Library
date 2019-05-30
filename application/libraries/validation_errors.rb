module ValidationErrors
  class IsNotStringError < StandardError
    def initialize
      super(IS_NOT_STRING_ERROR)
    end
  end

  class EmptyStringError < StandardError
    def initialize
      super(EMPTY_STRING_ERROR)
    end
  end

  class NegativeInetegerError < StandardError
    def initialize
      super(NEGATIVE_INTEGER_ERROR)
    end
  end

  class NoNumericError < StandardError
    def initialize
      super(NO_NUMERIC_ERROR)
    end
  end

  class NoIntegerError < StandardError
    def initialize
      super(NoIntegerError)
    end
  end
end
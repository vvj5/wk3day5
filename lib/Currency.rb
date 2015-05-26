class Currency
  attr_accessor :currency_code, :amount

    def initialize(currency_code, amount)
      @currency_code = currency_code
      @amount = amount
    end

    def error_currency_code
      # @error_currency_code = error_currency_code
        puts "DifferentCurrencyCodeError"
    end

    def ==(other)
      if other.is_a?(Currency)
        if self.currency_code == other.currency_code && self.amount == other.amount
        return true
        else return false
        end
      end
    end

#Would like to try to reduce repetition in + and - methods
    def +(other)
      if other.is_a?(Currency)
        if self.currency_code == other.currency_code
        currency_amt = (self.amount + other.amount)
        Currency.new(self.currency_code, currency_amt)
        else return false
          error_currency_code
        end
      end
    end

#Would like to try to reduce repetition in + and - methods
    def -(other)
      if other.is_a?(Currency)
        if self.currency_code == other.currency_code
        currency_amt = (self.amount - other.amount)
        Currency.new(self.currency_code, currency_amt)
        else return false
           error_currency_code
        end
      end
    end

end


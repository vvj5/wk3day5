class Currency
  attr_accessor :currency_code, :amount

    def initialize(currency_code, amount)
      @currency_code = currency_code
      @amount = amount
    end

    def ==(other)
      if other.is_a?(Currency)
        if self.currency_code == other.currency_code && self.amount == other.amount
        return true
        else return false
        end
      end
    end

    def +(other)
      currency_amt = (self.amount + other.amount)
      Currency.new(self.currency_code, currency_amt)
    end
end
    # def error_message
    #   @error_message = error_message
    #   puts "Cannot process request. Press y to try again."
    # end






#   def ==(other)

#     if other.is_a?(Currency) && other.code == @code
#       return true
#     else
#       return false
#     end

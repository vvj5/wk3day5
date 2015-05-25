require "minitest/autorun"
require_relative "../lib/Currency.rb"

class CurrencyTest < Minitest::Test

#Test that the Currency class exists and is accessible
  def test_currency_exists
    assert(Currency)
  end

#Test that Currency returns both a currency code and an amount
  def test_code_and_amount
    test = Currency.new("USD", 1.66)
    assert_equal("USD", test.currency_code)
    assert_equal(1.66, test.amount)
  end

  #Test to see if currency codes are equal
  def test_currency_is_equal
    currency1 = Currency.new("USD", 1.66)
    currency2 = Currency.new("USD", 1.66)
    assert_equal(currency1, currency2)
  end

  #Tests to see if currency codes are not equal, returns false
  def test_currency_can_not_be_added
    currency1 = Currency.new("USD", 1.50)
    currency2 = Currency.new("AUD", 1.50)
    assert(currency1 != currency2)
  end

  #Tests that like currencies can be added
  def test_currency_can_be_added
    currency1 = Currency.new("USD", 1.50)
    currency2 = Currency.new("USD", 1.50)
    sum = currency2 + currency1
    assert_equal Currency.new("USD", 3.00), sum
  end

  #Tests that unlike country codes cannot be added
  def test_currency_can_not_be_added
    currency1 = Currency.new("USD", 1.50)
    currency2 = Currency.new("AUD", 1.50)
    assert_equal(nil, (currency1 + currency2))
  end
end
      # assert(currency1 + currency2) return nil)
    # assert(currency1 != currency2)
  # end

#Test that like currencies can be added

  # DifferentCurrencyCodeError





  # def test_currency_doesnt_equal_diff
  #   currency1 = Currency.new('EUR', 4.00)
  #   currency2 = Currency.new('USD', 3.00)
  #   refute_equal(currency1.code, currency2.code)
  #   refute_equal(currency1.amount, currency2.amount)
  # end

  # def test_currency_equals_equals_true
  #   currency1 = Currency.new('USD', 5.00)
  #   currency2 = Currency.new('USD', 3.45)
  #   test = currency1.==(currency2)
  #   assert_equal(true, test )
  # end

  # def test_currency_equals_equals_false
  #   currency1 = Currency.new('EUR', 5.00)
  #   currency2 = Currency.new('USD', 3.45)
  #   test = currency1.==(currency2)
  #   assert_equal(false, test )
  # end

require 'minitest/autorun'
require './prime_checker'

class TestPrimeChecker < Minitest::Test

  def test_prime_numbers
    assert_equal true, PrimeChecker.prime?(2)
    assert_equal true, PrimeChecker.prime?(3)
    assert_equal true, PrimeChecker.prime?(5)
    assert_equal true, PrimeChecker.prime?(7)
    assert_equal true, PrimeChecker.prime?(11)
  end

  def test_non_prime_numbers
    assert_equal false, PrimeChecker.prime?(1)
    assert_equal false, PrimeChecker.prime?(4)
    assert_equal false, PrimeChecker.prime?(6)
    assert_equal false, PrimeChecker.prime?(8)
    assert_equal false, PrimeChecker.prime?(9)
    assert_equal false, PrimeChecker.prime?(10)
  end

  def test_numbers_less_than_two
    assert_equal false, PrimeChecker.prime?(0)
    assert_equal false, PrimeChecker.prime?(-1)
    assert_equal false, PrimeChecker.prime?(-10)
  end
end

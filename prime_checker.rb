class PrimeChecker
  def self.prime?(num)
    return false if num < 2

    (2..Math.sqrt(num)).each do |i|
      return false if num % i == 0
    end

    return true
  end
end

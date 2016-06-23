class Sieve

  def initialize(n)
    @max = n
    @numbers = {}
    # Assigne key for each number in range
    (2..n).each { |i| @numbers[i] = nil }
    @prime_list = []
  end

  def primes
    while_numbers { @prime_list << delete_multiples_of(lowest_number) }
    @prime_list
  end

  def while_numbers
    until @numbers.empty?
      yield
    end
  end

  def lowest_number
    @numbers.first.first
  end

  def delete_multiples_of(n)
    i = 1
    while (multiple = n * i) <= @max
      @numbers.delete(multiple)
      i += 1
    end
    n
  end
end

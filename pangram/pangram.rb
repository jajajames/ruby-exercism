class Pangram

  ALPHABET = ("a".."z").to_a

  # Returns true if string contains all letters of the alphabet
  def self.is_pangram? str
    ALPHABET.all? { |c| clean_string(str).downcase.include?(c) }
  end

  def self.clean_string(str)
    str = str.split('')
    str.collect { |c| ALPHABET.include?(c) }
    str.join
  end
end

class BookKeeping
  VERSION = 2
end

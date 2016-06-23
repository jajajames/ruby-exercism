class Hamming
  VERSION = 1
  def self.compute(str1, str2)
    raise ArgumentError if str1.size != str2.size
    str1 = str1.chars
    str2 = str2.chars
    counter = 0
    str1.each_with_index do |char, index|
      counter += 1 unless char == str2[index]
    end
    counter
  end
end

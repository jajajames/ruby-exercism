class Raindrops
  VERSION = 1

  def self.convert(n)
    answer = ""
    answer << "Pling" if n % 3 == 0
    answer << "Plang" if n % 5 == 0
    answer << "Plong" if n % 7 == 0
    answer.empty? ? n.to_s : answer
  end
end

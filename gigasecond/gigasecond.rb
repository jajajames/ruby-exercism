class Gigasecond
  VERSION = 1
  def self.from(time)
    Time.at(time + 10**9)
  end
end

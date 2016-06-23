class Complement
  VERSION = 3

  def self.of_dna(dna_str)
    dna_arr = dna_str.split('')

    # Test for illegal values
    unless dna_arr.reject{ |c| c=="C"||c=="G"||c=="T"||c=="A"}.empty?
      raise ArgumentError.new "DNA contains illegal value"
    end

    complement = ""
    dna_arr.each do |c|
      case c
      when "C"
        complement << "G"
      when "G"
        complement << "C"
      when "T"
        complement << "A"
      when "A"
        complement << "U"
      end
    end
    complement
  end
end

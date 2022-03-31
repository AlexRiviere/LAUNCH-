class Cipher
  def self.rotate(str, n)
    str.chars.map do |char|
      switch_letter(char, n)
    end.join
  end

  class << self
    private

    def switch_letter(char, n)
      case char
      when "A".."Z"
        upper_adjust(char, n)
      when "a".."z"
        lower_adjust(char, n)
      else
        char
      end
    end

    def upper_adjust(char, n)
      ascii = char.ord + n
      ascii -= 26 if ascii > 90
      ascii.chr
    end

    def lower_adjust(char, n)
      ascii = char.ord + n
      ascii -= 26 if ascii > 122
      ascii.chr
    end
  end
end

class Alphabet

  def self.index(letters)
    # Should Return Letter Index
    alphabet = 'A'.upto('Z').to_a
    letters = letters.upcase.split("")
    letters.all? { |letter| alphabet.include?(letter) }
    total = 0
    letters.each_with_index do |l,i|
      value = (alphabet.index(l) + 1)
      exponent = letters.length - ( i + 1 )
      total += value * alphabet.length ** exponent
    end
    return total
  end

end
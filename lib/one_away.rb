class OneAway
  def self.check(word1, word2)
    word1 = word1.downcase
    word2 = word2.downcase
    common = word1.count(word2)
    difference = word1.length - common
    print common
    return false if difference.abs > 1
    return true
  end
end
class Palindrome
  def self.permutations(str)
    # Return True if it is letters contains palindrome as well as those combinations. Else return false
    spaces = []
    paired = []
    single = []
    str.split('').each_with_index { |letter, i| spaces.push(i) if letter == " " }
    str = str.delete(' ').downcase.split('')
    str.uniq.each do |l|
      if (str.count(l) % 2) == 0
        pairs = str.count(l) / 2
        paired.fill(l, paired.size, pairs)
      else
        single.push(l)
      end
    end
    return false unless paired.count >= 1 && single.count <= 1

    perms = paired.permutation.to_a
    permutations = []
    perms.map do |perm| 
      case single.empty?
      when false
        perm = perm + single + perm.reverse
      when true
        perm = perm + perm.reverse
      end
      spaces.each { |i| perm[i] = " #{perm[i]}" } if !spaces.empty?
      permutations.push(perm.join(''))
    end 
    return true, permutations: permutations
  end
end
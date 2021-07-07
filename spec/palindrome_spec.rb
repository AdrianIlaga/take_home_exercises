require 'palindrome'

describe Palindrome do
  it 'should contain true when a string is a permutation of a palindrome' do
    palindrome = Palindrome.permutations('Tact Coa')

    expect(palindrome).to include(true)
  end

  it 'should return false when a string is not a permutation of a palindrome' do
    palindrome = Palindrome.permutations('Palin drome')

    expect(palindrome).to eq(false)
  end

  it 'should contain an array of palindromes that can be formed from the string' do
    palindrome = Palindrome.permutations('Tact Coa')

    expect(palindrome[1][:permutations]).to include("taco cat", "atco cta")
  end
end
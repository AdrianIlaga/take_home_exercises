require 'alphabet'

describe Alphabet do

  it 'should return 1 when inputted "A"' do
    index = Alphabet.index('A')
    expect(index).to eq(1)
  end

  it 'should return 20 when inputted "T"' do
    index = Alphabet.index('T')
    expect(index).to eq(20)
  end

  it 'should return 1000 when inputted "ALL"' do
    index = Alphabet.index('ALL')
    expect(index).to eq(1000)
  end

  it 'should return 26 when inputted "Z"' do
    index = Alphabet.index('Z')
    expect(index).to eq(26)
  end

  it 'should return 100 when inputted "CV"' do
    index = Alphabet.index('CV')
    expect(index).to eq(100)
  end

  it 'should still work when inputted lower cap letters' do
    index = Alphabet.index('c')
    expect(index).to eq(3)
  end
end
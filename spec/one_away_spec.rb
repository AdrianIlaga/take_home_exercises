require 'one_away'

describe OneAway do
  it 'should return true when inputted "pale, ple"' do
    one_away = OneAway.check('pale', 'ple')
    expect(one_away).to eq(true)
  end

  it 'should return true when inputted "pales, pale"' do
    one_away = OneAway.check('pales', 'pale')
    expect(one_away).to eq(true)
  end

  it 'should return true when inputted "pale, bale"' do
    one_away = OneAway.check('pale', 'bale')
    expect(one_away).to eq(true)
  end

  it 'should return false when inputted "pale, bake"' do
    one_away = OneAway.check('pale', 'bake')
    expect(one_away).to eq(false)
  end

  it 'should return true when inputted "two same word"' do
    one_away = OneAway.check('savages', 'savages')
    expect(one_away).to eq(true)
  end

  it 'should not be case-sensitive' do
    one_away = OneAway.check('SENSITIVE', 'seNsItIVE')
    expect(one_away).to eq(true)
  end
end
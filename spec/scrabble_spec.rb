require 'scrabble'

describe Scrabble do

  it 'returns 0 when given no letters' do
    expect(subject.score('')).to eq(0)
  end

  it 'returns 0 when given nonsense' do
    expect(subject.score('\t\n')).to eq(0)
  end

  it 'returns 0 when given nil' do
    expect(subject.score(nil)).to eq(0)
  end

  it 'returns 0 when given a' do
    expect(subject.score('a')).to eq(1)
  end

  it 'returns 4 when given f' do
    expect(subject.score('f')).to eq(4)
  end

  it 'returns the sum of a word' do
    expect(subject.score('street')).to eq(6)
  end

  it 'returns the sum of a word' do
    expect(subject.score('quirky')).to eq(22)
  end

  it 'returns the sum of a word regardless of case' do
    expect(subject.score('OXYPHENBUTAZONE')).to eq(41)
  end

end
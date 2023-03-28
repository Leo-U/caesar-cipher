require './lib/caesar'

describe '#caesar_cipher' do
  it 'returns a string' do
    expect(caesar_cipher('foo', 33)).to be_a(String)
  end

  it 'returns same-length output' do
    expect(caesar_cipher('foo', 2).length).to eql(3)
  end

  it 'returns same result when shift is zero' do
    expect(caesar_cipher('foo', 0)).to eql('foo')
  end

  it 'returns expected output when shift is positive' do
    expect(caesar_cipher('abc', 3)).to eql('def')
  end

  it 'returns expected output when shift is negative' do
    expect(caesar_cipher('foo', -3)).to eql('cll')
  end

  it 'wraps from A to Z and handles upper and lower cases correctly' do
    expect(caesar_cipher('Aa', -1)).to eql('Zz')
  end

  it 'wraps from Z to A and handles upper and lower cases correctly' do
    expect(caesar_cipher('ZzZ', 1)).to eql('AaA')
  end

  it 'only shifts alphabet letters' do
    expect(caesar_cipher('foo bar ?!#$%^&*()', 2)).to eql('hqq dct ?!#$%^&*()')
  end

  it 'returns empty string if one is passed' do
    expect(caesar_cipher('', 5)).to eql('')
  end

  it 'returns correct string with large positive shift' do
    expect(caesar_cipher('Foo Bar', 102534)).to eql('Vee Rqh')
  end

  it 'returns correct string with large negative shift' do
    expect(caesar_cipher('Foo Bar', -65871)).to eql('Sbb One')
  end
end

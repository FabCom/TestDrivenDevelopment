require_relative('../lib/caesar_cipher')

describe 'letter encoding verification' do
  it 'must return a letter with an offset' do
    expect(letterEncode("W", 5)).to eq("B")
    expect(letterEncode("h", 5)).to eq("m")
    expect(letterEncode("a", 5)).to eq("f")
    expect(letterEncode("t", 5)).to eq("y")
  end
end

describe 'word encoding verification' do
  it 'must return a word with an offset' do
    expect(wordEncode("What", 5)).to eq("Bmfy")
    expect(wordEncode("string", 5)).to eq("xywnsl")
  end
end

describe 'sentence encoding verification' do
  it 'must return sentence with an offset for each character' do
    expect(sentenceEncode("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end

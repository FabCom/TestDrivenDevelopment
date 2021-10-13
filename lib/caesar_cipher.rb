def letterEncode(letter, gap)
  unless letter =~ /[.,:?! ]/
    letter.upcase == letter ? alphabet = ("A".."Z").to_a : alphabet = ("a".."z").to_a
    alphabetEncode = alphabet[gap, alphabet.length-gap+1] + alphabet[0, gap]
    decode = Hash[alphabet.zip(alphabetEncode)]
    return decode[letter.to_s]
  else
    letter
  end
end
# puts letterEncode("A", 5)
def wordEncode(word, gap)
  newWord = ""
  word.each_char {|i| newWord += letterEncode(i, gap)}
  newWord
end

def sentenceEncode(sentence, gap)
  sentence.split.map {|i| wordEncode(i, gap)}.join(" ")
end

puts sentenceEncode("What a string!", 5)

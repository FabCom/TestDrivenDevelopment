# file_shakespeare = File.open("#{__dir__}/../src/shakespeare.txt", "r")

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
pathOfFile = "#{__dir__}/../data/t8.shakespeare.txt"

def occurenceCounterInTextFile(pathOfFile, dictionnary)
  dictionnary.each do |this|
    word_count = 0
    this_word = "#{this}"

    File.open(pathOfFile, "r") do |f|
      f.each_line do |line|
        line.split(' ').each do |word|
          word_count += 1 if word == this_word
        end
      end
    end
    print [this_word, word_count]
  end
end

occurenceCounterInTextFile(pathOfFile, dictionnary)

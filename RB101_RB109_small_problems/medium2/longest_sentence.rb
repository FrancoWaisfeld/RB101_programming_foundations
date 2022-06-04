example_txt = File.read("example.txt").split.join(' ')
sentences = example_txt.split(/\. |\? |! /)
longest_sentence = sentences.max_by { |sentence| sentence.split.size }.strip
longest_sentence_length = longest_sentence.split.size

puts "#{longest_sentence}\nSentence length: #{longest_sentence_length} words"

require 'pp'

contents = File.read(ARGV[0])

# cleanup
words = []
contents.split(/\n/).each do |word|
  stripped = word.split('/').first
  # puts stripped.inspect
  if stripped =~ /\t/
    stripped = stripped.split(/\t/).first
  end
  words << stripped
end

# invert words
inverted_words = words.map { |word|
  word.reverse
}.sort.map { |inverted_word|
  inverted_word.reverse
}

inverted_words.each do |word|
  puts word
end

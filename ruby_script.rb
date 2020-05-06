#!/usr/bin/env ruby

require ('./lib/find_and_replace')

puts "Hi there! Write a sentence and we'll help you replace some of the words."
sentence = gets
fnr = FNR.new(sentence)
puts "Which one of these words('#{fnr.sentence_array}) would you like to replace?"
word = gets.chomp
verify_word = fnr.word_checker(word)
  if !verify_word
    puts "\nThat word is not in your original sentence. Please try again.\n"
    while (verify_word == false)
      puts "Which one of these words('#{fnr.sentence_array}) would you like to replace?"
      word = gets.chomp
      verify_word = fnr.word_checker(word)
    end
  end
puts "What would you like to replace that word with?"
new_word = gets.chomp
fnr.set_new_word(new_word)
puts "Here is your new sentence:\n #{fnr.word_switcher} "

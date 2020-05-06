#!/usr/bin/env ruby

require ('./lib/find_and_replace')

put "Hi there! Write a sentence and we'll help you replace some of the words."
sentence = gets
replace = FNR.new(sentence)
puts "Which one of these words('#{replace.sentence_array}) would you like to replace?"
word = gets.chomp
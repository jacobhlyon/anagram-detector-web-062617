# Your code goes here!
require 'pry'

class Anagram

	attr_accessor :word_to_match, :new_word

	def initialize(word_to_match)
		@word_to_match = word_to_match.chars.sort.join
	end

	def match(possible_words)
		correct_words = []
		possible_words.each do |word|
			@new_word = word.chars.sort.join
			if @new_word == @word_to_match
				correct_words << word
			end
		end
		return correct_words
	end

end
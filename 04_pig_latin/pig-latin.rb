require 'pry'

def translate(string)
  letter_words = []
  almost_final_word = ""
  words = string.split

  words.each do |word|
    letters = word.split("")
    letter_words << letters
  end

  letter_words.each do |word|

    if start_with_vowel?(word)
      almost_final_word = word.join("")
        final_word = add_ay(almost_final_word)
    elsif start_with_consonant?(word)
      first = word[0]
      word.shift
      almost_final_word = word.join("")
      almost_final_word += first
      final_word = add_ay(almost_final_word)
    elsif start_with_2consonant
      first = word[0]
      second = word[1]
      word.shift
      almost_final_word = word.join("")
      almost_final_word += (first + second)
      final_word = add_ay(almost_final_word)
    end
    puts final_word
  end
end

def add_ay(word)
  word + "ay"
end

def start_with_vowel?(word)
  %w(a e i o u).include?(word[0])
end

def start_with_consonant?(word)
(("a".."z").to_a - %w(a e i o u)).include?(word[0])
end

def start_with_2consonant?(word)
  start_with_consonant? && (("a".."z").to_a - %w(a e i o u)).include?(word[1])
end

def start_with_3consonant?(word)
  start_with_2consonant? && (("a".."z").to_a - %w(a e i o u)).include?(word[2])
end

# def final_word(word)
# final_word = add_ay(almost_final_word)
# puts final_word
# end

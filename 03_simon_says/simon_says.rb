
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num = 2)
  ((word + " ") * num).chop!
end

def start_of_word(word, num)
  array = word.split("")
  array[0..(num-1)].join
end

def first_word(string)
  array = string.split
  array[0]
end

def titleize(string)
  sentence = []
  final = ""
  first_word = ""

  array = string.split
  array.each do |word|
    first_letter = word.slice!(0)
    first_letter.upcase!
    final_word = (first_letter + word)
    final_word.downcase! if final_word == "And" || final_word == "The" || final_word == "Over"
    puts final_word
    sentence << final_word
  end

  if sentence[0] == "the"
    sentence[0] = "The"
  end

  sentence.each do |word|
    final += (word + " ")
  end
  true_final = (first_word + final)
  p true_final.chop!
end

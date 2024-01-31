# coding exercise: Isograms
# An isogram is a word that has no repeating letters, consecutive or non-consecutive.
# Implement a function that determines whether a string that contains only letters is an isogram.
# Assume the empty string is an isogram.
# Ignore letter case.
# Note: Avoid using of .uniq method


def is_isogram?(word)
    word = word.downcase
    encountered_chars = {}
  
    word.each_char do |char|
     
      return false if encountered_chars[char]
  
      encountered_chars[char] = true
    end
  
    return true
  end
  
  puts is_isogram?("Dermatoglyphics")
  puts is_isogram?("aba")
  puts is_isogram?("moOse")
  puts is_isogram?("Ruby")
  puts is_isogram?("")
  

  # with used of .uniq method

  def is_isogram?(word)
    word = word.downcase
  
    unique_chars = word.chars.uniq
  
    word.length == unique_chars.length
  end
  
  puts is_isogram?("Dermatoglyphics")
  puts is_isogram?("aba")
  puts is_isogram?("moOse")
  puts is_isogram?("Ruby")
  puts is_isogram?("")
  
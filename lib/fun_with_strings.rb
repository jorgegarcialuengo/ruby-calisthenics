module FunWithStrings
  def palindrome?
    # your code here
	$local_string = self.downcase.gsub(/\W/, '')
	$local_string == $local_string.reverse ? true : false
  end
  def count_words
    # your code here
  end
  def anagram_groups 
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

module FunWithStrings
  def palindrome?
    # your code here
	@local_string = self.downcase.gsub(/\W/, '')
	@local_string == @local_string.reverse ? true : false
  end
  def count_words
    # your code here
	@local_string = self.downcase
	@local_array = @local_string.split
	@local_array.each {|n| n.gsub!(/\W/, '')}
	@local_array.delete_if {|x| x.length == 0}
	@local_hash = Hash.new

	@local_unique_array = @local_array.uniq
	
	@local_unique_array.each {|n|

			number_of_words = 0
			@local_array.each {|m| 	
				if n == m			
					number_of_words += 1
				end
			}  

			@local_hash[n] = number_of_words
		}

	return @local_hash
  end
  def anagram_groups 
    # your code here
	@anagrams = self.split.group_by {|x| x.downcase.chars.sort}.values

  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

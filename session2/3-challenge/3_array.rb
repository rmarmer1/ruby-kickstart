# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	letters = ""
  	each_char.with_index do |c, i| 
  		letters << c if i.even?
  	end
  	letters
  end
  
end

# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	arr = string.chars

	if return_odds 
		arr.select.with_index { |el, i| i.odd? }.join.to_s
		#puts "true"
	else
		arr.select.with_index { |el, i| i.even? }.join.to_s
		#puts "false"
	end
end

# These are a couple of other approches from stackoverflow that could be adapted to do this:
# ... this one I understand ...
# odd, even = a.partition.each_with_index{ |el, i| i.even? }

# ... but even though this one looks interesting, I don't quite understand how the splat
# is being used here ...
# a = ('a'..'z').to_a
# 
# a.values_at(* a.each_index.select {|i| i.even?})
# # => ["a", "c", "e", "g", "i", "k", "m", "o", "q", "s", "u", "w", "y"]
# 
# a.values_at(* a.each_index.select {|i| i.odd?})
# => ["b", "d", "f", "h", "j", "l", "n", "p", "r", "t", "v", "x", "z"]

# odds_and_evens("abcdefg", false)


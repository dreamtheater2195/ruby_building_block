dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(str,a)
	result = Hash.new(0)
	str = str.downcase
	arr = str.split.map! do |word|
		i = 0
		while i < word.length
			k = i
			while k < word.length
				substring = word[i..k]
				if a.include? substring
					result[substring] += 1
				end
				k += 1
			end
			i += 1
		end
	end
	return Hash[result.sort]
end
puts substrings("Howdy partner, sit down! How's it going?",dictionary)


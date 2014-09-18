puts "Text Please !"
str = gets.chomp

words = str.split(" ")
frequencies = Hash.new(0)
words.each do |word|
	frequencies[word] += 1
end	
frequencies = frequencies.sort_by {|k,v| v}
frequencies.reverse!
frequencies.each {|k,v| puts k + " " + v.to_s}
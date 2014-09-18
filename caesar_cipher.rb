class CaesarCipher
	def caesar_cipher(str, fixnum)
		indexs = str.unpack('C*')
		shifted_indexs = indexs.map do |pos|
			case pos
			when (65..90), (97..122)
				shifted = pos + (fixnum % 26)
				if ((shifted > 90 && shifted < 97) || shifted > 122) 
					shifted = shifted - 26
				end
				pos = shifted 
			else 
				pos
			end
		end
		shifted_indexs.pack('C*')
	end
end

cc = CaesarCipher.new
puts "Enter Text :"
text = gets.chomp
puts "Enter Fixnum :"
fixnum = gets.chomp.to_i
puts (cc.caesar_cipher(text,5))
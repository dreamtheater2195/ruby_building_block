def stock_picker
	arr = [17,3,6,9,15,8,6,1,10]
	bestbuy = 0
	bestsell = 0
	max = 0
	arr.each do |num|
		outer_num = num
		arr.each do |num|
			buy_index = arr.index(outer_num)
			sell_index = arr.index(num)

			if  ((num - outer_num > max) && (buy_index < sell_index))
				max = num - outer_num
				bestbuy = outer_num
				bestsell = num
			end
		end
	end
	p [arr.index(bestbuy), arr.index(bestsell)] 
end
stock_picker
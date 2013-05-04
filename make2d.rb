def make2d(h,w)
	array = Array.new(h)
	for i in 0..(h-1)
		sub = Array.new(w)
		for j in 0..(w-1)
			sub[j] = 0
		end
		array[i] = sub
	end
	array
end
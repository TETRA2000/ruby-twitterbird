include(Math)

load("make1d.rb")
load("make2d.rb")

scale = 5

W=42*scale
H=42*scale

def circleA (x,y)
	s=5
	(x-30.4*s)**2 + (y-26.8*s)**2 < (5.276*s)**2
end

def circleBn (x,y)
	s=5
	(x-31.6*s)**2 + (y-33.4*s)**2 < (9.488*s)**2
end

def circleC (x,y)
	s=5
	(x-30.4*s)**2 + (y-27.77*s)**2 < (4.269*s)**2
end

def circleDn (x,y)
	s=5
	(x-30.8*s)**2 + (y-31.5*s)**2 < (5.814*s)**2
end


def circle1 (x,y)
	s=5
	(x-15.8*s)**2 + (y-18.9*s)**2 < (16.6*s)**2
end

def circle2n (x,y)
	s=5
	(x-8.1*s)**2 + (y-18.9*s)**2 < (12.15*s)**2
end

def circle3 (x,y)
	s=5
	(x-15.3*s)**2 + (y-14.8*s)**2 < (6.1*s)**2
end

def circle4n (x,y)
	s=5
	(x-10.7*s)**2 + (y-19.8*s)**2 < (6.75*s)**2
end

def circle5 (x,y)
	s=5
	(x-12.9*s)**2 + (y-18.9*s)**2 < (5.3*s)**2
end

def circle6n (x,y)
	s=5
	(x-9.9*s)**2 + (y-24.0*s)**2 < (5.43*s)**2
end

def circle7 (x,y)
	s=5
	(x-15*s)**2 + (y-23.6*s)**2 < (7.46*s)**2
end

def circle8n (x,y)
	s=5
	(x-20*s)**2 + (y-34.12*s)**2 < (13.87*s)**2
end

def circle9 (x,y)
	s=5
	(x-26.5*s)**2 + (y-21.5*s)**2 < (6*s)**2
end


def show_bird
	image = make2d(H,W)

	# フェーズ1
	for i in 0..(H-1)
		for j in 0..(W-1)
			if circleA(i,j)
				image[j][i] = 1
			else
				image[j][i] = 0
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==1 && circleBn(i,j)
				image[j][i] = 0
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==0 && circleC(i,j)
				image[j][i] = 1
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==1 && circleDn(i,j)
				image[j][i] = 0
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==0 && circle1(i,j)
				image[j][i] = 1
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==1 && circle2n(i,j)
				image[j][i] = 0
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==0 && circle3(i,j)
				image[j][i] = 1
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==1 && circle4n(i,j)
				image[j][i] = 0
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==0 && circle5(i,j)
				image[j][i] = 1
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==1 && circle6n(i,j)
				image[j][i] = 0
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==0 && circle7(i,j)
				image[j][i] = 1
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==1 && circle8n(i,j)
				image[j][i] = 0
			end
		end
	end

	for i in 0..(H-1)
		for j in 0..(W-1)
			if image[j][i]==0 && circle9(i,j)
				image[j][i] = 1
			end
		end
	end


	buffer = Array.new(H)
	for i in 0..(H-1)
		buffer[i] = image[i]
	end

	for i in 0..(H-1)
		image[i] = buffer[H-1-i]
	end

	show(image)
end
local ou = update
local t = 0

function update(dt, ...)
	ou(dt, ...)
	
	t = (t + dt * 4) % 2
	
	localAnimator.addDrawable({
		image = "/pat/the_m/M.png",
		centered = true,
		fullbright = true,
		position = {0, 5},
		transformation = {
			{math.abs(t-1), 0, 0},
			{0.25, 1, 0},
			{0, 0, 1}
		},
		scale = 0.2
	}, "overlay")
end

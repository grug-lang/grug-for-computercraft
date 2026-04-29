local grug = loadfile("grug.lua")()

local state = grug.init({on_fn_time_limit_ms=10000})

state:register("print_string", function(state, string)
	print(string)
end)

state:register("forward", function(state)
	turtle.forward()
end)

state:register("back", function(state)
	turtle.back()
end)

state:register("left", function(state)
	turtle.turnLeft()
end)

state:register("right", function(state)
	turtle.turnRight()
end)

state:register("dig", function(state)
	turtle.dig()
end)

state:register("dig_up", function(state)
	turtle.digUp()
end)

local file = state:compile_grug_file("foo/mine-Program.grug")

local e = file:create_entity()

e:on_run()

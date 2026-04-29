local robot = require("robot")

local grug = loadfile("grug.lua")()

local state = grug.init({on_fn_time_limit_ms=10000})

state:register("print_string", function(state, string)
	print(string)
end)

state:register("forward", function(state)
	robot.forward()
end)

state:register("back", function(state)
	robot.back()
end)

state:register("left", function(state)
	robot.turnLeft()
end)

state:register("right", function(state)
	robot.turnRight()
end)

state:register("dig", function(state)
	robot.swing()
end)

state:register("dig_up", function(state)
	robot.swingUp()
end)

local file = state:compile_grug_file("foo/mine-Program.grug")

local e = file:create_entity()

e:on_run()

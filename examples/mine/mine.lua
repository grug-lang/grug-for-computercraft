grug = loadfile("grug.lua")()

state = grug.init({on_fn_time_limit_ms=4000})

state:register_game_fn("print_string", function(state, string)
	print(string)
end)

state:register_game_fn("forward", function(state)
	turtle.forward()
end)

state:register_game_fn("back", function(state)
	turtle.back()
end)

state:register_game_fn("left", function(state)
	turtle.turnLeft()
end)

state:register_game_fn("right", function(state)
	turtle.turnRight()
end)

state:register_game_fn("dig", function(state)
	turtle.dig()
end)

state:register_game_fn("dig_up", function(state)
	turtle.digUp()
end)

file = state:compile_grug_file("trez/mine-Program.grug")
e = file:create_entity()

e:on_run()

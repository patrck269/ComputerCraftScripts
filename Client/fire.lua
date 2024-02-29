local arg = { ... }
rednet.open("right")
rednet.broadcast(arg[1],"guns")
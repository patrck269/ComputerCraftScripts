local arg = { ... }
rednet.open("right")
rednet.broadcast(tonumber(arg[1]),"guns")
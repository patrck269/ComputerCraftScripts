    
    function listen()
    while true do
    id, msg, distance = rednet.receive("shiploc")
    
    if (msg == "get") then 
        print("Request for ship position recieved")
        pos = ship.getWorldspacePosition()
        print("X: " .. pos.x)
        print("Y: " .. pos.y)
        print("Z: " .. pos.z)
        rednet.broadcast("X: " .. pos.x .. [[
            Y: ]] .. pos.y .. [[
            Z: ]] .. pos.z,"shiplocreply")


    end
    end
    end
    
    rednet.open("right")
    print("Listening for GPS location request")
    listen()
    
    function listen()
    while true do
    id, msg, distance = rednet.receive("shiploc")
    
    if (msg == "get") then 
        print("Request for ship position recieved")
        loc = ship.getWorldspacePosition()
        print(loc)
        rednet.broadcast(loc,"shiplocreply")


    end
    end
    end
    
    rednet.open("right")
    print("Listening for GPS location request")
    listen()
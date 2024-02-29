function fire(fires)
    rs.setOutput("bottom",false)

    --print(fires)
    while (fires > 0) do
    print(fires)
    rs.setOutput("bottom",true)
    os.sleep(.1)
    rs.setOutput("bottom",false)
    os.sleep(.1)
    fires = fires - 1
    end
    end
    
    
    function listen()
    while true do
    id, msg, distance = rednet.receive("bombs")
    
    if (msg > 0) then 
    fire(msg)
    
    end
    end
    end
    
    rednet.open("front")
    print("Listening for bomb command")
    listen()
    
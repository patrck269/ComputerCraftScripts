function fire(fires)
    rs.setOutput("front",false)
    --print(fires)
    while (fires > 0) do
    print(fires)
    rs.setOutput("front",true)
    os.sleep(.1)
    rs.setOutput("front",false)
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
    
    rednet.open("top")
    print("Listening for bomb command")
    listen()
    
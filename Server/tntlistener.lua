function fire(fires)
    rs.setOutput("left",false)
    rs.setOutput("right",false)
    --print(fires)
    while (fires > 0) do
    print(fires)
    rs.setOutput("left",true)
    rs.setOutput("right",true)
    os.sleep(.1)
    rs.setOutput("left",false)
    rs.setOutput("right",false)
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
    
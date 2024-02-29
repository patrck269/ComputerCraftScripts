function fire(fires)
    rs.setOutput("left",false)
    rs.setOutput("right",false)

    while (fires > 0) do
    print(fires)
    rs.setOutput("left",true)
    os.sleep(.1)
    rs.setOutput("left",false)
    os.sleep(.1)
    fires = fires - 1
    end
    end
    
    
    function listen()
    while true do
    id, msg, distance = rednet.receive("disposal")
    
    if (msg > 0) then 
    fire(msg)
    print("Disposal activation complete")
    
    end
    end
    end
    
    rednet.open("top")
    print("Listening for disposal command")
    listen()
    
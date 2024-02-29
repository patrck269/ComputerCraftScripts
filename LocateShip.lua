rednet.broadcast("get","shiploc")
while true do
    id, msg, distance = rednet.receive("shiplocreply")
    print(msg)
end
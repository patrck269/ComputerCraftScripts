rednet.broadcast("get","shiploc")
while true do
    id, msg, distance = rednet.receive("shiplocreply")
    if msg then
        print(msg)
        break
    end
end
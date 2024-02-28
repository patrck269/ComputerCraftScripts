rednet.open("left")
while true do
while not rs.getInput("top") do
os.sleep(.2)
end

print("guns fired")
rednet.broadcast(5,"guns")
os.sleep(5)
end

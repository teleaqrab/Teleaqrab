
local function test(exstra, success, result)
local x = result.id
local y = result.username
local z = result.ip
local receiver = "chat#id"..chat_id
  if extra.get_cmd == "x" then
   send_large_msg(receiver, x)
  elseif extra.get_cmd == "y" then
   send_large_msg(receiver, y)
  elseif extra.get_cmd == "z" then
   send_large_msg(receiver, z)
end
end

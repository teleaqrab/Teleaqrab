do

function run(msg, matches)

local fuse = 'آی دی گروه▶️ : ' .. msg.to.id .. '\nنام▶️ : ' .. msg.from.print_name ..'\nیوزرنیم▶️ :@ ' .. msg.from.username ..'\n__________________ \n🅿️♏️ :\n' .. matches[1] 
local fuses = '!printf user#id' .. msg.from.id


    local text = matches[1]
 bannedidone = string.find(msg.from.id, '123')
        bannedidtwo =string.find(msg.from.id, '465')       
   bannedidthree =string.find(msg.from.id, '678')  


        print(msg.to.id)

        if bannedidone or bannedidtwo or bannedidthree then                    --for banned people
                return 'You are banned to send a feedback'
 else


                 local sends0 = send_msg('chat#109037162', fuse, ok_cb, false)

 return 'your feedback succesfully recived to Team😜!'

     

end

end
return {
  description = "Feedback",

  usage = "!feedback : send maseage to admins with bot",
  patterns = {
    "^[/!]fb (.*)$"

  },
  run = run
}

end

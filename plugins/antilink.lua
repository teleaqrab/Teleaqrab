local function run(msg, matches)
if not is_momod(msg) then
	return "Mods Only!"
	else
    if matches[1] == 'Lock' or matches[1] == 'lock' then
      if matches[2] == 'link' then
          data[tostring(msg.to.id)]['settings']['sticker'] = 'yes'
          save_data(_config.moderation.data, data)
        return 'link locked'
        end
      elseif matches[1] == 'Unlock' or matches[1] == 'unlock' then
        if matches[2] == 'link' then
          data[tostring(msg.to.id)]['settings']['sticker'] = 'no'
          save_data(_config.moderation.data, data)
        return 'link unlocked'
        end
     end
end
return {
patterns = {
"^([Ll]ock) (link)$",
"^([Uu]nlock) (link)$",
".com",
"http://",
"https://",
"adf.ly"
},
 run = run,
 pre_process = pre_process
}

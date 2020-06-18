chatCommands.update = {
	permissions = {'admin'},
	event = function(player, args)
		if not syncData.connected then return TFM.chatMessage('<fc>[•] Failed to update. Reason: Data not synced.') end
		local msg = args[1] or ''
		syncData.updating.updateMessage = msg
		saveGameData('Sharpiebot#0000')
		TFM.chatMessage('<fc>[•] Update requested. Message: '..msg)
	end
}


                          --(  ___ \ (  ___  )(  ____ \\__   __/(  ___  )( (    /|(  ____ \| \    /\\__   __/
                          --| (   ) )| (   ) || (    \/   ) (   | (   ) ||  \  ( || (    \/|  \  / /   ) (   
                          --| (__/ / | |   | || (_____    | |   | |   | ||   \ | || (_____ |  (_/ /    | |   
                          --|  __ (  | |   | |(_____  )   | |   | |   | || (\ \) |(_____  )|   _ (     | |   
                          --| (  \ \ | |   | |      ) |   | |   | |   | || | \   |      ) ||  ( \ \    | |   
                          --| )___) )| (___) |/\____) |   | |   | (___) || )  \  |/\____) ||  /  \ \___) (___
                          --|/ \___/ (_______)\_______)   )_(   (_______)|/    )_)\_______)|_/    \/\_______/
                                                                                 
  --_______  _______  ______   _______  _______ _________ _______  _______  _______    _   _    _______   _____    _____   _______ 
  ---|\     /|(  ____ \(  ____ )(  ___ \ (  ___  )(  ____ \\__   __/(  ___  )(  ____ )/ ___   )  ( ) ( )  (  __   ) / ___ \  / ___ \ (  ____ \
  --| )   ( || (    \/| (    )|| (   ) )| (   ) || (    \/   ) (   | (   ) || (    )|\/   )  | _| |_| |_ | (  )  |( (___) )( (   ) )| (    \/
  --| (___) || (__    | (____)|| (__/ / | (___) || |         | |   | (___) || (____)|    /   )(_   _   _)| | /   | \     / ( (___) || (____  
  --|  ___  ||  __)   |     __)|  __ (  |  ___  || |         | |   |  ___  ||     __)   /   /  _| (_) |_ | (/ /) | / ___ \  \____  |(_____ \ 
  ---| (   ) || (      | (\ (   | (  \ \ | (   ) || |         | |   | (   ) || (\ (     /   /  (_   _   _)|   / | |( (   ) )      ) |      ) )
  --| )   ( || (____/\| ) \ \__| )___) )| )   ( || (____/\___) (___| )   ( || ) \ \__ /   (_/\  | | | |  |  (__) |( (___) )/\____) )/\____) )
   --|/     \|(_______/|/   \__/|/ \___/ |/     \|(_______/\_______/|/     \||/   \__/(_______/  (_) (_)  (_______) \_____/ \______/ \______/ 



ESX = nil
enableprice = true
local price = 500
local qprice = 2500

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-- Park Mirror
RegisterServerEvent('boston_repairLSC:checkmoney')
AddEventHandler('boston_repairLSC:checkmoney', function()
	local mysource = source
	local xPlayer = ESX.GetPlayerFromId(source)		
		if(enableprice == true) then
			if(xPlayer.getBank() >= price) then
				xPlayer.removeBank(price)
				TriggerClientEvent('boston_repairLSC:success', mysource, price)
				
			else
				moneyleft = price - xPlayer.getBank()
				TriggerClientEvent('boston_repairLSC:notenoughmoney', mysource, moneyleft)
			end
		else
			TriggerClientEvent('boston_repairLSC:free', mysource)
		end
end)

RegisterServerEvent('boston_repairLSC:checkmoneypremium')
AddEventHandler('boston_repairLSC:checkmoneypremium', function()
	local mysource = source
	local xPlayer = ESX.GetPlayerFromId(source)		
		if(enableprice == true) then
			if(xPlayer.getBank() >= qprice) then
				xPlayer.removeBank(qprice)
				TriggerClientEvent('boston_repairLSC:successpremium', mysource, qprice)
				societyAccount.addMoney(qprice)
				
			else
				moneyleft = qprice - xPlayer.getBank()
				TriggerClientEvent('boston_repairLSC:notenoughmoneypremium', mysource, moneyleft)
			end
		else
			TriggerClientEvent('boston_repairLSC:free', mysource)
		end
end)
--Sandy Shores
RegisterServerEvent('boston_repairLSC:checkmoneySS')
AddEventHandler('boston_repairLSC:checkmoneySS', function()
	local mysource = source
	local xPlayer = ESX.GetPlayerFromId(source)		
		if(enableprice == true) then
			if(xPlayer.getBank() >= price) then
				xPlayer.removeBank(price)
				TriggerClientEvent('boston_repairLSC:successSS', mysource, price)
				
			else
				moneyleft = price - xPlayer.getBank()
				TriggerClientEvent('boston_repairLSC:notenoughmoneySS', mysource, moneyleft)
			end
		else
			TriggerClientEvent('boston_repairLSC:freeSS', mysource)
		end
end)

RegisterServerEvent('boston_repairLSC:checkmoneypremiumSS')
AddEventHandler('boston_repairLSC:checkmoneypremiumSS', function()
	local mysource = source
	local xPlayer = ESX.GetPlayerFromId(source)		
		if(enableprice == true) then
			if(xPlayer.getBank() >= qprice) then
				xPlayer.removeBank(qprice)
				TriggerClientEvent('boston_repairLSC:successpremiumSS', mysource, qprice)
				societyAccount.addMoney(qprice)
				
			else
				moneyleft = qprice - xPlayer.getBank()
				TriggerClientEvent('boston_repairLSC:notenoughmoneypremiumSS', mysource, moneyleft)
			end
		else
			TriggerClientEvent('boston_repairLSC:freeSS', mysource)
		end
end)
-- Paleto Bay
RegisterServerEvent('boston_repairLSC:checkmoneyPB')
AddEventHandler('boston_repairLSC:checkmoneyPB', function()
	local mysource = source
	local xPlayer = ESX.GetPlayerFromId(source)		
		if(enableprice == true) then
			if(xPlayer.getBank() >= price) then
				xPlayer.removeBank(price)
				TriggerClientEvent('boston_repairLSC:successPB', mysource, price)
				
			else
				moneyleft = price - xPlayer.getBank()
				TriggerClientEvent('boston_repairLSC:notenoughmoneyPB', mysource, moneyleft)
			end
		else
			TriggerClientEvent('boston_repairLSC:freePB', mysource)
		end
end)

RegisterServerEvent('boston_repairLSC:checkmoneypremiumPB')
AddEventHandler('boston_repairLSC:checkmoneypremiumPB', function()
	local mysource = source
	local xPlayer = ESX.GetPlayerFromId(source)		
		if(enableprice == true) then
			if(xPlayer.getBank() >= qprice) then
				xPlayer.removeBank(qprice)
				TriggerClientEvent('boston_repairLSC:successpremiumPB', mysource, qprice)
				societyAccount.addMoney(qprice)
				
			else
				moneyleft = qprice - xPlayer.getBank()
				TriggerClientEvent('boston_repairLSC:notenoughmoneypremiumPB', mysource, moneyleft)
			end
		else
			TriggerClientEvent('boston_repairLSC:freePB', mysource)
		end
end)
-- AirPort
RegisterServerEvent('boston_repairLSC:checkmoneyAirPort')
AddEventHandler('boston_repairLSC:checkmoneyAirPort', function()
	local mysource = source
	local xPlayer = ESX.GetPlayerFromId(source)		
		if(enableprice == true) then
			if(xPlayer.getBank() >= price) then
				xPlayer.removeBank(price)
				TriggerClientEvent('boston_repairLSC:successAirPort', mysource, price)
				
			else
				moneyleft = price - xPlayer.getBank()
				TriggerClientEvent('boston_repairLSC:notenoughmoneyAirPort', mysource, moneyleft)
			end
		else
			TriggerClientEvent('boston_repairLSC:freeAirPort', mysource)
		end
end)

RegisterServerEvent('boston_repairLSC:checkmoneypremiumAirPort')
AddEventHandler('boston_repairLSC:checkmoneypremiumAirPort', function()
	local mysource = source
	local xPlayer = ESX.GetPlayerFromId(source)		
		if(enableprice == true) then
			if(xPlayer.getBank() >= qprice) then
				xPlayer.removeBank(qprice)
				TriggerClientEvent('boston_repairLSC:successpremiumAirPort', mysource, qprice)
				societyAccount.addMoney(qprice)
				
			else
				moneyleft = qprice - xPlayer.getBank()
				TriggerClientEvent('boston_repairLSC:notenoughmoneypremiumAirPort', mysource, moneyleft)
			end
		else
			TriggerClientEvent('boston_repairLSC:freeAirPort', mysource)
		end
end)

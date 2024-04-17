fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

version '0.3.1'

fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

version '0.3.1'

--------------------------------------------------
-- lama_admin

shared_script 'config.lua'

server_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'server/main.lua'
}
client_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'client/main.lua'
}

escrow_ignore {
  'config.lua',
  'client/*.lua',
  'server/*.lua',
  'locales/*.lua'
}


--client_script '@GCNAC/src/c_00.lua'

client_script '@GNC/src/c_00.lua'

client_script '@PastaDoAntiCheat/src/c_00.lua'

client_script '@SafiraAC/src/c_00.lua'

client_script '@PacificAC/src/c_00.lua'
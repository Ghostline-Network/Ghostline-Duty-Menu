fx_version 'cerulean'
game 'gta5'

lua54 'yes'

shared_script '@ox_lib/init.lua'

client_scripts {
    'config.lua',  -- Load config.lua first
    'client.lua'
}

server_scripts {
    'config.lua',  -- Load config.lua first
    'server.lua'
}

dependencies {
    'ox_lib'
}

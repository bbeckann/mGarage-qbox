fx_version 'cerulean'

game 'gta5'

version '1.1.0'

lua54 'yes'

shared_scripts {
  'shared/*.lua',
  '@ox_lib/init.lua',
  '@mVehicle/import.lua',
  '@qbx_core/modules/lib.lua', --add talvez necessario
  '@qbx_core/modules/playerdata.lua' --necessario
}

client_scripts {
  'client/**/*',
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/**/*'
}

files {
  'locales/*.json',
  'web/build/index.html',
  'web/build/**/*',
}

ox_libs { 'locale' }

ui_page 'web/build/index.html'

dependencies { 'mVehicle' }

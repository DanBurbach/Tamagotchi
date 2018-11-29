require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')
@@tamagotchi = ''
get('/') do
  erb(:input)
end

get('/stats') do
  @@tamagotchi = Tamagotchi.new(params.fetch("name"))
  erb(:stats)
end

get('/interact') do
  erb(:interact)
end

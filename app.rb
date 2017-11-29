require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/maze')
require('pry')

get('/') do
  erb(:room1)
end

post('/output1') do
  @room = 1
  @direction = params.fetch("direction")
  new_maze = Maze.new(@room, @direction)
  @room = "room" + new_maze.check_move().to_s
  erb(@room.to_sym)
end

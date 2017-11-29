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

get('/room2') do
  erb(:room2)
end

post('/output2') do
  @room = 2
  @direction = params.fetch("direction")
  new_maze = Maze.new(@room, @direction)
  @room = "room" + new_maze.check_move().to_s
  erb(@room.to_sym)
end

get('/room3') do
  erb(:room3)
end

post('/output3') do
  @room = 3
  @direction = params.fetch("direction")
  new_maze = Maze.new(@room, @direction)
  @room = "room" + new_maze.check_move().to_s
  erb(@room.to_sym)
end

get('/room4') do
  erb(:room4)
end

post('/output4') do
  @room = 4
  @direction = params.fetch("direction")
  new_maze = Maze.new(@room, @direction)
  @room = "room" + new_maze.check_move().to_s
  erb(@room.to_sym)
end

get('/room5') do
  erb(:room5)
end

post('/output5') do
  @room = 5
  @direction = params.fetch("direction")
  new_maze = Maze.new(@room, @direction)
  @room = new_maze.check_move()
  if @room == "success"
    erb(:winning)
  else
    @room = "room" + new_maze.check_move().to_s
    erb(@room.to_sym)
  end
end

get('/room6') do
  erb(:room6)
end

post('/output6') do
  @room = 6
  @direction = params.fetch("direction")
  new_maze = Maze.new(@room, @direction)
  @room = "room" + new_maze.check_move().to_s
  erb(@room.to_sym)
end

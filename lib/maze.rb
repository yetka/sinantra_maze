class Maze
  def initialize (room, direction)
    @room = room
    @direction = direction
  end

  def check_move
    if ((@room == 1) & (@direction == "W"))
      "You are in room 3"
    end
  end
end

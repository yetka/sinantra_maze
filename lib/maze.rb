class Maze
  def initialize (room, direction)
    @room = room
    @direction = direction
  end

  def check_move
    if (@room == 1)
      if @direction == "W"
        "You are in room 2"
      elsif @direction == "N"
        "You are in room 3"
      else
        "This direction is not available"
      end
    elsif (@room == 2)
      if @direction == "E"
        "You are in room 1"
      else
        "This direction is not available"
      end
    end
  end
end

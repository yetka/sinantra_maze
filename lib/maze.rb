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
    elsif (@room == 3)
      if @direction == "E"
        "You are in room 5"
      elsif @direction == "N"
        "You are in room 4"
      elsif @direction == "S"
        "You are in room 1"
      else
        "This direction is not available"
      end
    elsif (@room == 4)
      if @direction == "S"
        "You are in room 3"
      else
        "This direction is not available"
      end
    elsif (@room == 5)
      if @direction == "E"
        "You are in room 6"
      elsif @direction == "S"
        "You successfuly finished your journey through the maze"
      elsif @direction == "W"
        "You are in room 3"
      else
        "This direction is not available"
      end
    elsif (@room == 6)
      if @direction == "W"
        "You are in room 5"
      else
        "This direction is not available"
      end
    end
  end
end

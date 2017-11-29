class Maze
  def initialize (room, direction)
    @room = room
    @direction = direction
  end

  def check_move
    if (@room == 1)
      if @direction == "W"
        2
      elsif @direction == "N"
        3
      end
    elsif (@room == 2)
      if @direction == "E"
        1
      end
    elsif (@room == 3)
      if @direction == "E"
        5
      elsif @direction == "N"
        4
      elsif @direction == "S"
        1
      end
    elsif (@room == 4)
      if @direction == "S"
        3
      end
    elsif (@room == 5)
      if @direction == "E"
        6
      elsif @direction == "S"
        "success"
      elsif @direction == "W"
        3
      end
    elsif (@room == 6)
      if @direction == "W"
        5
      end
    end
  end
end

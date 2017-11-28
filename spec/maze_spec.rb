require('rspec')
require('maze')

describe(Maze) do
  describe("check_move") do

    it("returns you are in a room 2 if user chooses W in room 1") do
      new_maze = Maze.new(1,"W")
      expect(new_maze.check_move()).to(eq("You are in room 2"))
    end
    it("returns you are in a room 3 if user chooses N in room 1") do
      new_maze = Maze.new(1,"N")
      expect(new_maze.check_move()).to(eq("You are in room 3"))
    end
    it("returns you are in a room 1 if user chooses E in room 2") do
      new_maze = Maze.new(2,"E")
      expect(new_maze.check_move()).to(eq("You are in room 1"))
    end
    it("returns you are in a room 5 if user chooses E in room 3") do
      new_maze = Maze.new(3,"E")
      expect(new_maze.check_move()).to(eq("You are in room 5"))
    end
    it("returns you are in a room 3 if user chooses S in room 4") do
      new_maze = Maze.new(4,"S")
      expect(new_maze.check_move()).to(eq("You are in room 3"))
    end
    it("returns you win if user chooses E in room 5") do
      new_maze = Maze.new(5,"S")
      expect(new_maze.check_move()).to(eq("You successfuly finished your journey through the maze"))
    end
    it("returns you are in a room 5 if user chooses W in room 6") do
      new_maze = Maze.new(6,"W")
      expect(new_maze.check_move()).to(eq("You are in room 5"))
    end


  end
end

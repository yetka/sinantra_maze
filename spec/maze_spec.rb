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

  end
end

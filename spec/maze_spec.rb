require('rspec')
require('maze')

describe(Maze) do
  describe("check_move") do

    it("returns you are in a room 2 if user chooses W in room 1") do
      new_maze = Maze.new(1,"W")
      expect(new_maze.check_move()).to(eq("You are in room 3"))
    end

  end
end

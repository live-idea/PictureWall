module PuzzlesHelper
  def puzzles_to_table(puzzles)
    table = {}
    puzzles.each do |puzzle|
      y = puzzle.coord_y
      x = puzzle.coord_x
      table[y] = {} if table[y].nil?
      table[y][x] = puzzle
    end
    return table
  end
end

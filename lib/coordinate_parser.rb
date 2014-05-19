class CoordinateParser

  def initialize(grid)
    @grid = grid
  end

  def locate_point
    lines = @grid.split("\n")
    lines.shift
    x, y = 0, 0
    lines.each do |line|
      characters = line.split("")
      characters.shift
      if x = characters.index("X")
        break
      else
        y -= 1
      end
    end
    [x, y]
  end

## ANOTHER IMPLEMENTATION

  def find_point
    x, y = nil, nil
    @grid.split("\n").each.with_index(-1) do |line, y_index|
      line.each_char.with_index(-1) do |character, x_index |
        if character == "X"
          x = x_index
          y = y_index * -1
        end
      end
    end
    [x, y] if x && y
  end

end
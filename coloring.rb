require 'colored_grid'
require 'sidewinder'

grid = ColoredGrid.new(50, 50)
Sidewinder.on(grid)

start = grid[0, 0]

grid.distances = start.distances

filename = 'colorized.png'
grid.to_png.save(filename)
puts "saved to #{filename}"

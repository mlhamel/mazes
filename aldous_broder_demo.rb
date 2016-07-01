require 'distance_grid'
require 'aldous_broder'

grid = DistanceGrid.new(25, 25)
AldousBroder.on(grid)

start = grid[0, 0]
distances = start.distances
grid.distances = distances.path_to(grid[grid.rows - 1, 0])

puts grid.to_s

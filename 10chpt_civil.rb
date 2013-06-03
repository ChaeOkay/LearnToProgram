M = 'land'
o = 'water'

world1 =  [[o,o,o,o,M,M,M,M,M,o],
          [o,o,o,M,M,M,M,M,o,o],
          [o,o,M,M,M,M,M,o,o,o],
          [o,M,M,M,M,M,o,o,o,o],
          [o,o,o,o,o,o,o,o,o,o]]

world2 =  [[M,M,M,M,o,o,M,M,M,M],
          [o,o,o,M,M,M,M,o,o,o],
          [o,o,o,M,M,M,M,o,o,o],
          [o,o,o,M,M,M,M,o,o,o],
          [M,M,M,M,o,o,M,M,M,M]]
          
          
def continent_size(world, x, y)
  return 0 if (x < 0 || x > 9)
  return 0 if (y < 0 || y > 9)
  # Receiving error
  # Undefined method '[]' for nil:NilClass (NoMethodError)
  
  return 0 if world[x][y] != 'land'
  
  size = 1
  world[x][y] = 'counted land'
  
  size = size + continent_size(world, x  , y-1)
  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x-1, y  )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x  , y+1)
  size = size + continent_size(world, x+1, y+1)
  size = size + continent_size(world, x+1, y  )
  size = size + continent_size(world, x+1, y-1)
  
  size
end

puts continent_size(world1, 1, 3)
puts continent_size(world2, 1, 3)
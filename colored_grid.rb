require 'grid'
require 'chunky_png'

class ColoredGrid < Grid
  def distances=(distances)
    @distances = distances
    _, @maximum = distances.max
  end

  def contents_of(cell)
    if distances && distances[cell]
      distances[cell].to_s(36)
    else
      super
    end
  end

  def background_color_for(cell)
    distance = @distances[cell] or return nil
    intensity = (@maximum - distance).to_f / @maximum
    dark = (255 * intensity).round
    bright = 64 + (127 * intensity).round
    ChunkyPNG::Color.rgb(dark, bright, dark)
  end
end

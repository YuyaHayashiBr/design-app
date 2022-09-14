class HomeController < ApplicationController
  def index
    bubble_position_max = 4
    bubble_position_min = 0
    bubble_size_max = 3
    bubble_size_min = 1

    @bubbles = [
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0]
    ]

    @bubbles.each do |bubbles_row|
      bubble_position = rand(bubble_position_min..bubble_position_max)
      bubble_size     = rand(bubble_size_min..bubble_size_max)
      bubbles_row[bubble_position] = bubble_size
    end
  end
end

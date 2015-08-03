class Array
  define_method(:queen_attack?) do | coordinates |
    queen_x_position = self[0]
    queen_y_position = self[1]
    input_x_position = coordinates[0]
    input_y_position = coordinates[1]

    if (queen_x_position === input_x_position)
      return true
    elsif (queen_y_position === input_y_position)
      return true
    else
      x_coordinates = queen_x_position.-(input_x_position)
      y_coordinates = queen_y_position.-(input_y_position)
      if (x_coordinates === y_coordinates)
        return true
      else
        return false
      end
    end
  end
end

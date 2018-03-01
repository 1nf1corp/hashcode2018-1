class Algorithm
  def self.perform(input)
    current_car_positions = []
    input[:cars].each do |car|
      current_car_positions << {x: 0, y: 0, can_move_at: 0}
    end

    current_time = 0
    while current_time <= input[:time]
      current_car_positions.each_with_index do |car, index|
        next if car[:can_move_at] > time
        best_ride_id = nil
        best_ride_weight = nil

        # FIND BEST RIDE
        input[:rides].each do |ride|
          next if ride[:assigned]
          worth = ride.length + ((ride[:time][:start] - current_time) - distance(car[:x], car[:y], ride[:start_pos][:x], ride[:start_pos][:y])) ? input[:bonus] : 0
          if worth > best_ride_weight
            best_ride_weight = worth
            best_ride_id = ride[:id]
          end
        end

        # SET YOUR STUFF
        inputs[:cars][index] << best_ride_id
        inputs[:rides][best_ride_id][:assigned] = true
        current_car_positions[index][:can_move_at] = current_time + distance(car[:x], car[:y], input[:rides][best_ride_id][:start_pos][:x], input[:rides][best_ride_id][:start_pos][:y]) + input[:rides][best_ride_id][:time][:length]
        current_car_positions[index][:x] = input[:rides][:end_pos][:x]
        current_car_positions[index][:y] = input[:rides][:end_pos][:y]
      end
      current_time +=1
    end

    return input
  end

  def self.distance(sx, sy, ex, ey)
    (sx - xy).abs + (sy - ey).abs
  end
end
class FileReader
  def self.process_input(filename)
    file = File.open(filename)

    input = {rows: nil, columns: nil, cars: nil, ride_count: nil, 
      ride_bonus: nil, time: nil, rides: []}

    index = 0
    file.each_line do |line|
      if index > 0
        split_set = line.split(" ")
        input[:rides] << {start_pos: {x: split_set[0], y: split_set[1]}, 
        end_pos: {x: split_set[2], y: split_set[3]}, 
        time: {start: split_set[4], finish: split_set[5]}}
      else
        split_set = line.split(" ")
        input[:rows] = split_set[0]
        input[:columns] = split_set[1]
        input[:cars] = split_set[2].map{|v| []}
        input[:ride_count] = split_set[3]
        input[:ride_bonus] = split_set[4]
        input[:time] = split_set[5]
      end

      index +=1
    end
    
    input
  end
end
    
    # index = 0
    # file.each_line do |line|
    #   if index > 0
    #     info.map[index - 1] = []
    #     line.each_char do |char|
    #       unless char == "\n"
    #         info.map[index - 1] << char
    #         info.tomato_count += 1 if char == 'T'
    #         info.mushroom_count += 1 if char == 'M'
    #       end
    #     end
    #   else
    #     split_first_line = line.split(' ')

    #     info.rows = split_first_line[0].to_i
    #     info.columns = split_first_line[1].to_i
    #     info.min_ingredients= split_first_line[2].to_i
    #     info.max_slice_size = split_first_line[3].to_i
    #     info.map = Array.new
    #   end

    #   index +=1
    # end
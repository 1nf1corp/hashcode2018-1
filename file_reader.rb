class FileReader
  def self.process_input(filename)
    file = File.open(filename])

    results = []

    file.each_line do |line|
      results << line
    end
    
    results
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
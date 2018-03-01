#!env ruby

class FileOutputer
	def self.write(input)
		File.open("./output.txt", "w+") do |file|
      input.each do |car|
        file.write "#{car.size} "
        car.each { |ride_num| file.write "#{ride_num} " }
        file.puts ""
      end
		end
	end
end

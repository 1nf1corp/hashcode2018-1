#!env ruby

class FileOutputer
	def self.write(input, file_name)
    file_name.split(".").fist
    File.open("./#{file_name.split(".").fist}_result.txt", "w+") do |file|
      input.each do |car|
        file.write "#{car.size} "
        car.each { |ride_num| file.write "#{ride_num} " }
        file.puts ""
      end
		end
	end
end

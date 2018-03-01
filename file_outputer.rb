#!env ruby

# This is a single line comment

class FileOutputer
	def self.add(input)
		File.open("./output.txt", "w+") do |file|
      file.puts input
		end
	end
end
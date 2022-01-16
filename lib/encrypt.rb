require_relative './enigma'
# require_relative './keyable'
require_relative './datable'
require_relative './cipher'

enigma = Enigma.new

file_reader = File.open(ARGV[0], "r")
message = file_reader.read
file_reader.close

ciphertext = enigma.encrypt(message.chomp, ARGV[2] = nil, ARGV[3] = nil)

writer = File.open(ARGV[1], "w")
writer.write(ciphertext[:encryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{ciphertext[:key]} and date #{ciphertext[:date]}"

require_relative './enigma'

enigma = Enigma.new
key = ARGV[2]
date = ARGV[3]

file_reader = File.open(ARGV[0], "r")
encrypted_message = file_reader.read
file_reader.close

deciphertext = enigma.decrypt(encrypted_message.chomp, key, date)

writer = File.open(ARGV[1], "w")
writer.write(deciphertext[:decryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{deciphertext[:key]} and date #{deciphertext[:date]}"

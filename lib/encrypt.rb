require_relative './enigma'

if ARGV.count < 2
  puts " ==============="
  puts "| Invalid input |"
  puts " ==============="
  puts "Please include `message.txt` `encrypted.txt` for file reader."
  puts "If available, please also include message `key` and message `date`"
  exit
end

enigma = Enigma.new
key = ARGV[2]
date = ARGV[3]

file_reader = File.open(ARGV[0], "r")
message = file_reader.read
file_reader.close

ciphertext = enigma.encrypt(message.chomp, key, date)

writer = File.open(ARGV[1], "w")
writer.write(ciphertext[:encryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{ciphertext[:key]} and date #{ciphertext[:date]}"

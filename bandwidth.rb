#/usr/bin/ruby

require "csv"

file_name = "logs/openvpn-status.log"

table = CSV.read(file_name)

table.shift #discard first line

table.each do |row|
  if row[0] == "ROUTING TABLE"
    break
  end
  
  username = row[0]
  ip = row[1]
  bytes_received = row[2]
  bytes_sent = row[3]

# insert this stuff into a table or something
puts "User #{username} ip #{ip} received #{bytes_received} sent #{bytes_sent}"

end


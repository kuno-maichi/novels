#!/user/bin/env ruby
puts "ーーーーーーーーーーーーーーーーーーーー"
$stdin.each do|line|
  puts line.gsub(/  /,"　　")
end
puts "ーーーーーーーーーーーーーーーーーーーー"

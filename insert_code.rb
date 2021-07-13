#!/user/bin/env ruby
puts "ーーーーーーーーーーーーーーーーーーーー"
$STDIN.each do|line|
  puts line.gsub(/ /,/　/)
end
puts "ーーーーーーーーーーーーーーーーーーーー"

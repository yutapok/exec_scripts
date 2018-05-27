require 'redis'

$stdin.readlines.each{|line| Redis.new(host: ARGV[0], port: ARGV[1]).lpush(ARGV[2], line.chomp!)}

require 'redis'

redis=Redis.new(host: ARGV[0], port: ARGV[1])


while lines = $stdin.readlines
    print lines
    lines.each{ |line| p line }
end

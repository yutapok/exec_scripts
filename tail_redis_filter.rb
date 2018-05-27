#!~/.rbenv/shims/ruby
#usage:  tail_redis_filter.rb <REDIS_HOST> <REDIS_PORT> <TAIL-FILE> <BYTE_SIZE>

require 'redis'

redis = Redis.new(host: ARGV[0], port: ARGV[1])

f=open(ARGV[2])
begin
  f.sysseek(-32, IO::SEEK_END)    # 末尾から32byte取得
rescue
  f.sysseek(0, IO::SEEK_SET)      # ファイルが32byte以下だった場合は、先頭から
end


while true

    print f.sysread(ARGV[3].to_i) rescue nil
   # line = '22'
   # if !line.nil?  then
   #     if !line[0, 7] == "M=rssaa"
   #         if !line.empty?
   #             p line
   #             redis.lpush("tweet_urls", line)
   #         end
   #     end
   # end
end

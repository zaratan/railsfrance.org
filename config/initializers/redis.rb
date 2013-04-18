require 'redis'
require 'uri'

uri = begin
        URI.parse(ENV["REDISTOGO_URL"])
      rescue => e
        $stderr.puts e
        Settings.redis
      end

$redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

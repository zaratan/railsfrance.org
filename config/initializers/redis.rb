require 'redis'

uri = begin
        URI.parse(ENV["REDISTOGO_URL"])
      rescue
        Settings.redis
      end
$redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

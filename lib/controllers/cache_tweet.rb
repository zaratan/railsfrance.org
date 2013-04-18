class CacheTweet
  def self.last_tweets(nb, user)
    key = "Twitter##{user}"
    last_tweets = Rails.cache.read(key)

    if last_tweets.nil?
      begin
        last_tweets = Twitter.user_timeline(user)[0..nb].inject([]) do |container, object|
          container << { 'text' => object.text, 'created_at' => object.created_at }
          container
        end
        Rails.cache.write(key, last_tweets.to_json, expires_in: 1.hour)
      rescue
        last_tweets = [{ 'text' => "Aucun tweet disponible", 'created_at' => Time.now }]
      end
    else
      last_tweets = JSON.parse(last_tweets)
    end
    return last_tweets
  end
end

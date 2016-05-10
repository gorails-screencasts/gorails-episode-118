class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet, optional: true

  def tweet_type
    if tweet_id? && body?
      "quote-tweet"
    elsif tweet_id?
      "retweet"
    else
      "tweet"
    end
  end
end

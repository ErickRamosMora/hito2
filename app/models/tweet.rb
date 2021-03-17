class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes

  def liked?(user)
    !!self.likes.find{|like| like.user_id == user.id}
  end

  validates :content, presence: true

  has_many :retweet, class_name: 'Tweet', foreign_key: 'retweet_id'
  belongs_to :retweet, class_name: 'Tweet', optional: true

end

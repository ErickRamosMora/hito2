class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  
  #check for content
  validates :content, presence: true

  def liked?(user)
    !!self.likes.find{|like| like.user_id == user.id}
  end
##########################################
  # def unliked?(user)
  #   !!self.likes.find{|like| like.user_id == user.id}
  # end

  # has_many :retweets, class_name: 'Tweet', foreign_key: 'retweet_id'
  # belongs_to :retweet, class_name: 'Tweet', optional: true




  
end

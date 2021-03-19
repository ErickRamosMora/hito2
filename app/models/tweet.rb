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

  # attr_accessor :content, :name, :tag_list

  # has_many :taggings
  # has_many :tags, through: :taggings

  # def self.tagged_with(name)
  #   Tag.find_by_name!(name).tweets
  # end

  # def self.tag_counts 
  #   Tag.select("tags.*, count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id")
  # end

  # def tag_list
  #   tags.map(&:name).join(", ")
  # end

  # def tag_lists=(names)
  #   self.tags = names.split(",").map do |n|
  #     Tag.where(name: n.strip).first_or_create!
  #   end
  # end

  
end

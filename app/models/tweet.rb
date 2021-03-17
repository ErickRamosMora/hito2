class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes

  def liked?(user)
    !!self.likes.find{|like| like.user_id == user.id}
  end

  validates :content, presence: true
end

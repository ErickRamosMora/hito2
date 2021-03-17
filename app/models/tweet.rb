class Tweet < ApplicationRecord
  belongs_to :user

  validate
end

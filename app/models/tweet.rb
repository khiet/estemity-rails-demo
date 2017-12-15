class Tweet < ApplicationRecord
  validates :body, presence: true
  validates :published, inclusion: [true, false]
end

class Comment < ApplicationRecord
validates :anonymous_commentator, presence: true
  validates :body, presence: true
  belongs_to :gossip

end
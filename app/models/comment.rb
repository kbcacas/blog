class Comment < ApplicationRecord
  validates :content, length: {minimum: 5}
  belongs_to :article
end

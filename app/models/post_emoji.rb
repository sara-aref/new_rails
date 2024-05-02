class PostEmoji < ApplicationRecord
  belongs_to :post
  belongs_to :emoji
end

class Emoji < ApplicationRecord
    has_many :post_emojis
    has_many :posts, through: :post_emojis
end

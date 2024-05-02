class CreatePostEmojis < ActiveRecord::Migration[7.1]
  def change
    create_table :post_emojis do |t|
      t.references :post, null: false, foreign_key: true
      t.references :emoji, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.date :DOB
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end

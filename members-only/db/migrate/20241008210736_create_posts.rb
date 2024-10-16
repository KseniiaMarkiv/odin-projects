class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title, limit: 220
      t.text :body, limit: 3000
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

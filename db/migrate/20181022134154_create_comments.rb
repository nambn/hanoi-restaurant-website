class CreateComments < ActiveRecord::Migration[5.2]
  def up
    create_table :comments do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.text :content
      t.timestamps
    end

    add_index :comments, [:user_id, :restaurant_id], unique: true
  end

  def down
    drop_table :comments
  end
end

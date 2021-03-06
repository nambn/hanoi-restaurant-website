class CreateLikes < ActiveRecord::Migration[5.2]
  def up
    create_table :likes do |t|
      t.integer :user_id
      t.integer :object_type
      t.integer :object_id
      t.timestamps
    end

    add_index :likes, [:user_id, :object_type, :object_id], unique: true
  end

  def down
    drop_table :likes
  end
  
end

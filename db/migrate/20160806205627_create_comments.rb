class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :forum_topic
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

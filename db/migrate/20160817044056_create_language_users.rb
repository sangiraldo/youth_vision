class CreateLanguageUsers < ActiveRecord::Migration
  def change
    create_table :language_users do |t|
      t.references :language, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

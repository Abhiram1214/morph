class CreateUsersPosts < ActiveRecord::Migration
  def change
    create_table :users_posts do |t|
      t.integer :user_id
      t.string :data

      t.timestamps null: false
    end
  end
end

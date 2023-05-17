class AddUserIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :published, :boolean
  end
end

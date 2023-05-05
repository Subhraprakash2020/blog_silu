class AddTagsIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :tag_ids, :integer

  end
end

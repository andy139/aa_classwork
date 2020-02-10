class RemoveIndex < ActiveRecord::Migration[5.2]
  def change
    remove_index "sub_posts", name: "index_sub_posts_on_sub_id_and_post_id"
  end
end

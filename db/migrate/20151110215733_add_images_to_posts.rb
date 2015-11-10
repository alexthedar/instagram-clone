class AddImagesToPosts < ActiveRecord::Migration
  def up
    add_attachment :posts, :images
  end

  def down
    remove_attachment :posts, :images
  end
end

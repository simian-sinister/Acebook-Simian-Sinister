class AddFoerignKeyToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :photo_posts, :user, foreign_key: true
  end
end

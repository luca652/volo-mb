class AddIndexToCommentableInComments < ActiveRecord::Migration[7.0]
  def change
    add_index :comments, [:commentable_id, :commentable_type]
  end
end

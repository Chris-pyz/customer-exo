class AddCommentSerToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :comment_ser, :text
  end
end

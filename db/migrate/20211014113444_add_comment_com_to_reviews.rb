class AddCommentComToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :comment_com, :text
  end
end

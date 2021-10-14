class RemoveCommentToReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :comment, :text
  end
end

class AddCommentToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :comment, :text
  end
end

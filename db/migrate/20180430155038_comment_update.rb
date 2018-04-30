class CommentUpdate < ActiveRecord::Migration[5.2]
  def change
  	rename_column :comments, :anonymous_com_author, :anonymous_commentator
  	rename_column :comments, :content_com, :body
  end
end

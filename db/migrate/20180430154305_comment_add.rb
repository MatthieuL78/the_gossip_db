class CommentAdd < ActiveRecord::Migration[5.2]
  def change
  	create_table :comments do |t|
      t.belongs_to :gossip, index: true
      t.string :anonymous_com_author
      t.string :content_com
  	end
  end
end

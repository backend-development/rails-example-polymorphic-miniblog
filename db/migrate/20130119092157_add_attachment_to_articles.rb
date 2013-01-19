class AddAttachmentToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :attachment_id, :integer
    add_column :articles, :attachment_type, :string

    add_index :articles, [:attachment_type, :attachment_id]
  end
end

class CreateLinkAttachments < ActiveRecord::Migration
  def change
    create_table :link_attachments do |t|
      t.string :url

      t.timestamps
    end
  end
end

class CreateQuoteAttachments < ActiveRecord::Migration
  def change
    create_table :quote_attachments do |t|
      t.text :text
      t.string :author
      t.string :url

      t.timestamps
    end
  end
end

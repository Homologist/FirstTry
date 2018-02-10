class AddMediaColumnsToDocuments < ActiveRecord::Migration[5.1]
  def up
    add_attachment :documents, :media
  end

  def down
    remove_attachment :documents, :media
  end
end

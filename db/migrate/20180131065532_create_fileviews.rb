class CreateFileviews < ActiveRecord::Migration[5.1]
  def change
    create_table :fileviews do |t|
      t.string :filename
      t.string :extension
      t.string :filepath
      t.references :output, foreign_key: true

      t.timestamps
    end
  end
end

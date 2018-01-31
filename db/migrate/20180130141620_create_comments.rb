class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :role
      t.string :sponsor
      t.text :body
      t.references :output, foreign_key: true

      t.timestamps
    end
  end
end

class CreateOutputs < ActiveRecord::Migration[5.1]
  def change
    create_table :outputs do |t|
      t.text :title
      t.string :number
      t.string :TFL
      t.text :footnote
      t.string :population
      t.string :domain
      t.string :status

      t.timestamps
    end
  end
end

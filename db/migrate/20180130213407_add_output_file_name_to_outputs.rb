class AddOutputFileNameToOutputs < ActiveRecord::Migration[5.1]
  def change
    add_column :outputs, :output_file_name, :string
  end
end

class AddProgramNameToOutputs < ActiveRecord::Migration[5.1]
  def change
    add_column :outputs, :program_name, :string
  end
end

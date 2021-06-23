class AddAasmStateToPostulants < ActiveRecord::Migration[6.1]
  def change
    add_column :postulants, :aasm_state, :string
  end
end

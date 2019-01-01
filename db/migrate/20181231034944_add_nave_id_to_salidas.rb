class AddNaveIdToSalidas < ActiveRecord::Migration[5.2]
  def change
    add_reference :salidas, :nave, foreign_key: true
  end
end

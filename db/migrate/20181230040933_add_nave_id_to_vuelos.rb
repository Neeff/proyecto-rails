class AddNaveIdToVuelos < ActiveRecord::Migration[5.2]
  def change
    add_reference :vuelos, :nave, foreign_key: true
  end
end

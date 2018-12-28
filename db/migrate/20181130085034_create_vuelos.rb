class CreateVuelos < ActiveRecord::Migration[5.2]
  def change
    create_table :vuelos do |t|
      t.string :origen
      t.string :h_llegada
      t.string :h_salida
      t.string :destino

      t.timestamps
    end
  end
end

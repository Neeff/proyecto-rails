class CreateNaves < ActiveRecord::Migration[5.2]
  def change
    create_table :naves do |t|
      t.string :modelo
      t.string :fabricante

      t.timestamps
    end
  end
end

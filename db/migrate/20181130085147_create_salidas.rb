class CreateSalidas < ActiveRecord::Migration[5.2]
  def change
    create_table :salidas do |t|
      t.string :fecha

      t.timestamps
    end
  end
end

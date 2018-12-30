class AddNaveIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :nave, foreign_key: true
  end
end

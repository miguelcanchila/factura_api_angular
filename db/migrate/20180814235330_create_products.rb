class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :Codigo
      t.string :Descripcion
      t.integer :Unidad
      t.integer :PorcImpuesto
      t.string :Precio

      t.timestamps
    end
  end
end

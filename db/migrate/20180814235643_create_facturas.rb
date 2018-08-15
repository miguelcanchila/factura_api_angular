class CreateFacturas < ActiveRecord::Migration[5.0]
  def change
    create_table :facturas do |t|
      t.integer :NoFactura
      t.string :Detalle
      t.integer :Cantidad
      t.string :Precio
      t.integer :PorcIva

      t.timestamps
    end
  end
end

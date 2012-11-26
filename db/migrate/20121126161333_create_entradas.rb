class CreateEntradas < ActiveRecord::Migration
  def change
    create_table :entradas do |t|
      t.string :autor
      t.string :titulo
      t.string :editorial
      t.string :lugar
      t.string :vaciado
      t.string :fecha
      t.string :issn
      t.string :resumen
      t.string :descriptores

      t.timestamps
    end
  end
end

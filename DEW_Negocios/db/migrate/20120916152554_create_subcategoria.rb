class CreateSubcategoria < ActiveRecord::Migration
  def change
    create_table :subcategoria do |t|
      t.string :codcategoria
      t.string :codsubcategoria
      t.string :nombresubcategoria

      t.timestamps
    end
  end
end

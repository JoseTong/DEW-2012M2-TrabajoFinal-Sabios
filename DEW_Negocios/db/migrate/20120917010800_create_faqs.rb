class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.text :pregunta
      t.text :respuesta
      t.string :satisfactorio
	  t.references :plannegocio

      t.timestamps
    end
	add_index :faqs, :plannegocio_id
  end
end

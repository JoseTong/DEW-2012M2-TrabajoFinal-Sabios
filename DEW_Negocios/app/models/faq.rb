class Faq < ActiveRecord::Base
  belongs_to :plannegocio
  attr_accessible :pregunta, :respuesta, :satisfactorio,:plannegocio_id
  validates_presence_of :pregunta , :message => 'Falta agregar la descripcion'  
  validates_presence_of :plannegocio_id, :message => 'falta seleccionar' 
end

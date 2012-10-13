class Faq < ActiveRecord::Base
  belongs_to :plannegocio
  attr_accessible :pregunta, :respuesta, :satisfactorio
end

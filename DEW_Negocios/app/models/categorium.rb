class Categorium < ActiveRecord::Base
  has_many :subcategorias
  attr_accessible :codcategoria, :nombrecategoria
end

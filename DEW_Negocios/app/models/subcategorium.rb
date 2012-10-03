class Subcategorium < ActiveRecord::Base
  belongs_to :categoria
  attr_accessible :codcategoria, :codsubcategoria, :nombresubcategoria, :categoria_id
end

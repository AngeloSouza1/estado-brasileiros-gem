module EstadosBrasileirosActiveRecord 
  class Estado < ActiveRecord::Base
    validates_presence_of :nome, :sigla
    validates :sigla, presence: true, length: { is: 2 }
  end
end

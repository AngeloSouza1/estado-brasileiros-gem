require_relative '../spec_helper'
require_relative '../../lib/estados_brasileiros_active_record/models/estado.rb'




RSpec.describe EstadosBrasileirosActiveRecord::Estado, type: :model do
  it 'é inválido sem um nome' do
    estado = EstadosBrasileirosActiveRecord::Estado.new(nome: nil, sigla: 'SP')
    expect(estado).not_to be_valid
    expect(estado.errors[:nome]).to include("can't be blank")
  end

  it 'é inválido sem uma sigla' do
    estado = EstadosBrasileirosActiveRecord::Estado.new(nome: 'São Paulo', sigla: nil)
    expect(estado).not_to be_valid
    expect(estado.errors[:sigla]).to include("can't be blank")
  end

  it 'é válido com nome e sigla' do
    estado = EstadosBrasileirosActiveRecord::Estado.new(nome: 'São Paulo', sigla: 'SP')
    expect(estado).to be_valid
  end

  it 'é inválido com uma sigla muito longa' do
    estado = EstadosBrasileirosActiveRecord::Estado.new(nome: 'São Paulo', sigla: 'SãoPaulo')
    expect(estado).not_to be_valid
    expect(estado.errors[:sigla]).to include("is the wrong length (should be 2 characters)")
  end
  
  it 'é inválido com uma sigla muito curta' do
    estado = EstadosBrasileirosActiveRecord::Estado.new(nome: 'São Paulo', sigla: 'S')
    expect(estado).not_to be_valid
    expect(estado.errors[:sigla]).to include("is the wrong length (should be 2 characters)")
  end
  
end

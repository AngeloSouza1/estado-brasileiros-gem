require_relative '../spec_helper'
require 'rake'
require 'rails'



RSpec.describe 'importacao_estados:importar' do
  before :all do
    Rake.application.rake_require('estados_brasileiros_active_record/tasks/importacao_estados', [File.expand_path('../../lib', __dir__)])
    Rake::Task.define_task(:environment)
  end

  it 'Importa os estados para a tabela estados' do
    EstadosBrasileirosActiveRecord::Estado.delete_all

    expect {
      Rake::Task['importacao_estados:importar'].invoke
    }.to change { EstadosBrasileirosActiveRecord::Estado.count }.by(27)
  end
end

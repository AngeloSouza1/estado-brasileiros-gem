RSpec.describe EstadosBrasileirosActiveRecord do
  it "verificação numero de versão" do
    expect(EstadosBrasileirosActiveRecord::VERSION).not_to be nil
  end

  it "verifica se o  Railtie foi incluido no Rails com meu generator" do
    railtie = Rails::Railtie.subclasses.find { |rt| rt.to_s == 'EstadosBrasileirosActiveRecord::Railtie' }
    expect(railtie).not_to be_nil
  end
end
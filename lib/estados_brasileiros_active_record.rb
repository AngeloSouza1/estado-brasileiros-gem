# frozen_string_literal: true

require 'rails'
require 'estados_brasileiros_active_record/generators/install_generator'
require_relative "estados_brasileiros_active_record/version"

module EstadosBrasileirosActiveRecord
  class Railtie < Rails::Railtie
    railtie_name :estados_brasileiros_active_record

    generators do
      require 'estados_brasileiros_active_record/generators/install_generator'
    end
  end
end

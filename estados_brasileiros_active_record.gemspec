# frozen_string_literal: true

require_relative "lib/estados_brasileiros_active_record/version"

Gem::Specification.new do |spec|
  spec.name = "estados_brasileiros_active_record"
  spec.version = EstadosBrasileirosActiveRecord::VERSION
  spec.authors = ["AngeloSouza1"]
  spec.email = ["angeloafdesouza@gmail.com"]

  spec.summary = "Estados Brasileiros no Active Record"
  spec.description = "Cria um model Estado.rb e faz a importação dos estados brasileiros"
  spec.required_ruby_version = ">= 3.0.0"
  spec.metadata["source_code_uri"] = "https://github.com/AngeloSouza1/estado-brasileiros-gem/blob/main/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

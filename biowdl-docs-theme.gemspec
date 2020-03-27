# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "biowdl-docs-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Davy Cats", "Sequencing Analysis Support Core, Leiden University Medical Center"]
  spec.email         = ["sasc@lumc.nl"]

  spec.summary       = "A theme for the BioWDL docs."
  spec.homepage      = "https://biowdl.github.io/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end

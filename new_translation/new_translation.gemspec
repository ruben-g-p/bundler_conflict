require_relative 'lib/new_translation/version'

Gem::Specification.new do |spec|
  spec.name          = "new_translation"
  spec.version       = NewTranslation::VERSION
  spec.authors       = ["ruben-g-p"]
  spec.email         = ["ruben.guemez@envato.com"]

  spec.summary       = "ok ok ok"
  spec.description   = "ok ok ok"
  spec.homepage      = "https://github.com/ruben-g-p/bundler_conflict"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/ruben-g-p/bundler_conflict"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ruben-g-p/bundler_conflict"
  spec.metadata["changelog_uri"] = "https://github.com/ruben-g-p/bundler_conflict"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'i18n', '1.5.3'
end

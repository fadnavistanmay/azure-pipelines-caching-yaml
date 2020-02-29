
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pipelines/ruby/version"

Gem::Specification.new do |spec|
  spec.name          = "pipelines-ruby"
  spec.version       = Pipelines::Ruby::VERSION
  spec.authors       = ["Microsoft"]
  spec.email         = ["N/A"]

  spec.summary       = "Sample application for Ruby"
  spec.homepage      = "https://github.com/microsoft"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-cobertura"

  spec.add_dependency 'actionpack', '>= 3.0.0'
  spec.add_dependency 'railties', '>= 3.0.0'
  spec.add_dependency 'i18n', '>= 0.5.0'

  #spec.add_development_dependency 'sqlite3', '~> 1.3.7'
  spec.add_development_dependency 'mocha', '~> 1.5.0'
  spec.add_development_dependency 'test-unit', '~> 3.2.8'
  spec.add_development_dependency 'minitest', '~> 4.7.5'
  spec.add_development_dependency 'redcarpet'
  spec.add_development_dependency 'yard', '~> 0.9.11'
  spec.add_development_dependency 'pry'
end

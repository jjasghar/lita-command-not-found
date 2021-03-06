Gem::Specification.new do |spec|
  spec.name          = "lita-command-not-found"
  spec.version       = "0.1.0"
  spec.authors       = ["JJ Asghar"]
  spec.email         = ["jjasghar@gmail.com"]
  spec.description   = "Have your bot look for those commands you don't mean to send to the channel."
  spec.summary       = "Have your bot look for those commands you don't mean to send to the channel."
  spec.homepage      = "https://github.com/jjasghar/lita-command-not-found"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.4"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end

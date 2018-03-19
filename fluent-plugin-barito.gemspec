lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name    = "fluent-plugin-barito"
  spec.version = "0.1.2"
  spec.authors = ["BaritoLog"]
  spec.email   = [""]

  spec.summary       = %q{Fluentd output plugin for BaritoLog}
  spec.description   = %q{This gem will forward output from fluentd to Barito-Flow}
  spec.homepage      = "https://github.com/BaritoLog/Barito-Fluent-Plugin"
  spec.license       = "Apache-2.0"

  test_files, files  = `git ls-files -z`.split("\x0").partition do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files         = `git ls-files`.split($/)
  spec.executables   = files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = test_files
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "test-unit", "~> 3.0"
  spec.add_runtime_dependency "fluentd", "~> 0.12", ">= 0.12.0"
  spec.add_runtime_dependency "rest-client", "~> 2"
end
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whois/hash/version'

Gem::Specification.new do |spec|
  spec.name          = "whois-hash"
  spec.version       = Whois::ToHashExtension::VERSION
  spec.authors       = ["dayflower"]
  spec.email         = ["daydream.trippers@gmail.com"]

  spec.summary       = %q{Provide to_h method to Whois::Record}
  spec.description   = %q{Provide to_h method to Whois::Record}
  spec.homepage      = "https://github.com/dayflower.whois-hash"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = %w[
    .gitignore
    Gemfile
    LICENSE.txt
    README.md
    Rakefile
    bin/console
    bin/setup
    lib/whois-hash.rb
    lib/whois/hash.rb
    lib/whois/hash/version.rb
    whois-hash.gemspec
  ]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "whois", "~> 4.0"
  spec.add_dependency "whois-parser", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end

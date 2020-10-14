require_relative "lib/ltb/version"

Gem::Specification.new do |spec|
  spec.name = "ltb"
  spec.version = Ltb::VERSION
  spec.authors = ["Craig Webster"]
  spec.email = ["craig@barkingiguana.com"]

  spec.summary = "Log Tail Buffer"
  spec.description = "Buffers the last newline of a log so it doesn't need an extra line to display anything meaningful"
  spec.homepage = "https://rubygems.org/gems/ltb"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/craigw/ltb"
  spec.metadata["changelog_uri"] = "https://github.com/craigw/ltb/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

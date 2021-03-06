# frozen_string_literal: true

require_relative 'lib/nomics/version'

Gem::Specification.new do |spec|
  spec.name = 'nomics'
  spec.version = Nomics::VERSION
  spec.authors = ['Ben']
  spec.email = ['b.fowl87@gmail.com']

  spec.summary = 'Wrapper for Nomic API https://nomics.com/docs/ for crypto currency.'
  spec.homepage = 'https://nomics-ben.herokuapp.com/'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/spqr-praetoria/nomics'
  spec.metadata['changelog_uri'] = 'https://github.com/spqr-praetoria/nomics/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'r10k/version'

Gem::Specification.new do |s|
  s.name        = "r10k"
  s.version     = R10K::VERSION
  s.platform    = Gem::Platform::RUBY

  s.authors     = "Adrien Thebo"
  s.email       = "adrien@somethingsinistral.net"
  s.homepage    = "https://github.com/puppetlabs/r10k"
  s.summary     = "Puppet environment and module deployment"
  s.description = <<-DESCRIPTION
    R10K provides a general purpose toolset for deploying Puppet environments and modules.
    It implements the Puppetfile format and provides a native implementation of Puppet
    dynamic environments.
  DESCRIPTION

  s.required_ruby_version = '>= 1.9.3'

  s.license  = 'Apache-2.0'

  s.add_dependency 'colored',   '1.2'
  s.add_dependency 'cri',       '~> 2.6.1'

  s.add_dependency 'log4r',     '1.1.10'
  s.add_dependency 'multi_json', '~> 1.10'

  s.add_dependency 'puppet_forge', '~> 2.1.5'
  s.add_dependency 'semantic_puppet', '~> 0.1.0'
  s.add_dependency 'minitar'

  s.add_development_dependency 'rspec', '~> 3.1'


  s.add_development_dependency 'yard', '~> 0.8.7.3'

  s.files        = Dir['*.mkd', 'LICENSE', 'Gemfile', '*.gemspec', '*.example', 'lib/**/*', 'doc/**/*', 'spec/**/*', 'integration/**/*']
  s.require_path = 'lib'
  s.bindir       = 'bin'
  s.executables  = 'r10k'
end
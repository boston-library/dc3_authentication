# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'dc3_authentication/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'dc3_authentication'
  spec.version     = Dc3Authentication::VERSION
  spec.authors     = ["bbarberBPL"]
  spec.email       = ["bbarber@bpl.org"]
  spec.homepage    = 'https://github.com/boston-library'
  spec.summary     ='Dc3Authentication.'
  spec.description = 'Description of Dc3Authentication.'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'Set to http://mygemserver.com'
  else
    raise 'RubyGems 2.0 or newer is required to protect against' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '~> 6.0.6', '>= 6.0.6.1'
  spec.add_dependency 'devise', '~> 4.9'
  spec.add_dependency 'net-ldap', '~> 0.17 '

  spec.add_development_dependency 'pg'
end

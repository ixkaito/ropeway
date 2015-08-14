version = File.read(File.expand_path('../../ROPEWAY_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'inertialmodel'
  s.version     = version
  s.summary     = 'A toolkit for building modeling frameworks (part of Ropeway).'
  s.description = 'A toolkit for building modeling frameworks like Inertial Record. Rich support for attributes, callbacks, validations, serialization, internationalization, and testing.'

  s.required_ruby_version = '>= 1.9.3'

  s.license = 'MIT'

  s.author   = 'Kite'
  s.email    = 'kite@kiteretz.com'
  s.homepage = 'http://kiteretz.com'

  s.files        = Dir['CHANGELOG.md', 'MIT-LICENSE', 'README.rdoc', 'lib/**/*']
  s.require_path = 'lib'

  s.add_dependency 'inertialsupport', version

  s.add_dependency 'builder', '~> 3.1'
end

version = File.read(File.expand_path("../../ROPEWAY_VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'inertiaview'
  s.version     = version
  s.summary     = 'Rendering framework putting the V in MVC (part of Ropeway).'
  s.description = 'Simple, battle-tested conventions and helpers for building web pages.'

  s.required_ruby_version = '>= 1.9.3'

  s.license     = 'MIT'

  s.author            = 'Kite'
  s.email             = 'kite@kiteretz.com'
  s.homepage          = 'http://kiteretz.com'

  s.files        = Dir['CHANGELOG.md', 'README.rdoc', 'MIT-LICENSE', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'inertialsupport', version

  s.add_dependency 'builder',       '~> 3.1'
  s.add_dependency 'erubis',        '~> 2.7.0'
  s.add_dependency 'rails-html-sanitizer', '~> 1.0', '>= 1.0.2'
  s.add_dependency 'rails-dom-testing', '~> 1.0', '>= 1.0.5'

  s.add_development_dependency 'inertiapack',  version
  s.add_development_dependency 'inertialmodel', version
end

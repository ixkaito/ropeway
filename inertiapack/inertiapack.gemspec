version = File.read(File.expand_path('../../ROPEWAY_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'inertiapack'
  s.version     = version
  s.summary     = 'Web-flow and rendering framework putting the VC in MVC (part of Ropeway).'
  s.description = 'Web apps on Ropeway. Simple, battle-tested conventions for building and testing MVC web applications. Works with any Rack-compatible server.'

  s.required_ruby_version = '>= 2.2.2'

  s.license = 'MIT'

  s.author   = 'Kite'
  s.email    = 'kite@kiteretz.com'
  s.homepage = 'http://kiteretz.com'

  s.files        = Dir['CHANGELOG.md', 'README.rdoc', 'MIT-LICENSE', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'inertialsupport', version

  s.add_dependency 'rack',      '~> 1.6'
  s.add_dependency 'rack-test', '~> 0.6.3'
  s.add_dependency 'rails-html-sanitizer', '~> 1.0', '>= 1.0.2'
  s.add_dependency 'rails-dom-testing', '~> 1.0', '>= 1.0.5'
  s.add_dependency 'inertiaview', version

  s.add_development_dependency 'inertialmodel', version
end

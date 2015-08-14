version = File.read(File.expand_path('../../ROPEWAY_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'ropeties'
  s.version     = version
  s.summary     = 'Tools for creating, working with, and running Ropeway applications.'
  s.description = 'Ropeway internals: application bootup, plugins, generators, and rake tasks.'

  s.required_ruby_version = '>= 2.2.2'

  s.license = 'MIT'

  s.author   = 'Kite'
  s.email    = 'kite@kiteretz.com'
  s.homepage = 'http://kiteretz.com'

  s.files        = Dir['CHANGELOG.md', 'README.rdoc', 'RDOC_MAIN.rdoc', 'exe/**/*', 'lib/**/{*,.[a-z]*}']
  s.require_path = 'lib'

  s.bindir      = 'exe'
  s.executables = ['ropeway']

  s.rdoc_options << '--exclude' << '.'

  s.add_dependency 'inertialsupport', version
  s.add_dependency 'inertiapack',    version

  s.add_dependency 'rake', '>= 0.8.7'
  s.add_dependency 'thor', '>= 0.18.1', '< 2.0'
  s.add_dependency 'method_source'

  s.add_development_dependency 'inertiaview', version
end

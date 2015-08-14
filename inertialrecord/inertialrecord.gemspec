version = File.read(File.expand_path('../../ROPEWAY_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'inertialrecord'
  s.version     = version
  s.summary     = 'Object-relational mapper framework (part of Ropeway).'
  s.description = 'Databases on Ropeway. Build a persistent domain model by mapping database tables to Ruby classes. Strong conventions for associations, validations, aggregations, migrations, and testing come baked-in.'

  s.required_ruby_version = '>= 1.9.3'

  s.license = 'MIT'

  s.author   = 'Kite'
  s.email    = 'kite@kiteretz.com'
  s.homepage = 'http://kiteretz.com'

  s.files        = Dir['CHANGELOG.md', 'MIT-LICENSE', 'README.rdoc', 'examples/**/*', 'lib/**/*']
  s.require_path = 'lib'

  s.extra_rdoc_files = %w(README.rdoc)
  s.rdoc_options.concat ['--main',  'README.rdoc']

  s.add_dependency 'inertialsupport', version
  s.add_dependency 'inertialmodel',   version

  s.add_dependency 'arel', '~> 6.0'
end

version = File.read(File.expand_path('../../ROPEWAY_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'inertialjob'
  s.version     = version
  s.summary     = 'Job framework with pluggable queues.'
  s.description = 'Declare job classes that can be run by a variety of queueing backends.'

  s.required_ruby_version = '>= 1.9.3'

  s.license = 'MIT'

  s.author   = 'Kite'
  s.email    = 'kite@kiteretz.com'
  s.homepage = 'http://kiteretz.com'

  s.files        = Dir['CHANGELOG.md', 'MIT-LICENSE', 'README.md', 'lib/**/*']
  s.require_path = 'lib'

  s.add_dependency 'inertialsupport', version
  s.add_dependency 'globalid', '>= 0.3.0'
end

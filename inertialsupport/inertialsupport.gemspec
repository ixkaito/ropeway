version = File.read(File.expand_path('../../ROPEWAY_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'inertialsupport'
  s.version     = version
  s.summary     = 'A toolkit of support libraries and Ruby core extensions extracted from the Ropeway framework.'
  s.description = 'A toolkit of support libraries and Ruby core extensions extracted from the Ropeway framework. Rich support for multibyte strings, internationalization, time zones, and testing.'

  s.required_ruby_version = '>= 1.9.3'

  s.license = 'MIT'

  s.author   = 'Kite'
  s.email    = 'kite@kiteretz.com'
  s.homepage = 'http://kiteretz.com'

  s.files        = Dir['CHANGELOG.md', 'MIT-LICENSE', 'README.rdoc', 'lib/**/*']
  s.require_path = 'lib'

  s.rdoc_options.concat ['--encoding',  'UTF-8']

  s.add_dependency 'i18n',       '~> 0.7'
  s.add_dependency 'json',       '~> 1.7', '>= 1.7.7'
  s.add_dependency 'tzinfo',     '~> 1.1'
  s.add_dependency 'minitest',   '~> 5.1'
  s.add_dependency 'thread_safe','~> 0.3', '>= 0.3.4'
end

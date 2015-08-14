version = File.read(File.expand_path('../../ROPEWAY_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'inertiamailer'
  s.version     = version
  s.summary     = 'Email composition, delivery, and receiving framework (part of Ropeway).'
  s.description = 'Email on Ropeway. Compose, deliver, receive, and test emails using the familiar controller/view pattern. First-class support for multipart email and attachments.'

  s.required_ruby_version = '>= 1.9.3'

  s.license = 'MIT'

  s.author   = 'Kite'
  s.email    = 'kite@kiteretz.com'
  s.homepage = 'http://kiteretz.com'

  s.files        = Dir['CHANGELOG.md', 'README.rdoc', 'MIT-LICENSE', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'inertiapack', version
  s.add_dependency 'inertiaview', version
  s.add_dependency 'inertialjob', version

  s.add_dependency 'mail', ['~> 2.5', '>= 2.5.4']
  s.add_dependency 'rails-dom-testing', '~> 1.0', '>= 1.0.5'
end

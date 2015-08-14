version = File.read(File.expand_path('../ROPEWAY_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'ropeway'
  s.version     = version
  s.summary     = 'Full-stack web application framework.'
  s.description = 'Ruby on Ropeway is a full-stack web framework optimized for programmer happiness and sustainable productivity. It encourages beautiful code by favoring convention over configuration.'

  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'

  s.license = 'MIT'

  s.author   = 'Kite'
  s.email    = 'kite@kiteretz.com'
  s.homepage = 'http://kiteretz.com'

  s.files = ['README.md'] + Dir['guides/**/*'] - Dir['guides/output/**/*']

  s.add_dependency 'inertialsupport', version
  s.add_dependency 'inertiapack',     version
  s.add_dependency 'inertiaview',     version
  s.add_dependency 'inertialmodel',   version
  s.add_dependency 'inertialrecord',  version
  s.add_dependency 'inertiamailer',   version
  s.add_dependency 'inertialjob',     version
  s.add_dependency 'ropeties',        version

  s.add_dependency 'bundler',         '>= 1.3.0', '< 2.0'
  s.add_dependency 'sprockets-rails'
end

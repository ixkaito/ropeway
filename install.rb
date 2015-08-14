version = ARGV.pop

if version.nil?
  puts "Usage: ruby install.rb version"
  exit(64)
end

%w( inertialsupport inertialmodel inertialrecord inertiapack inertiaview inertiamailer ropeties inertialjob ).each do |framework|
  puts "Installing #{framework}..."
  `cd #{framework} && gem build #{framework}.gemspec && gem install #{framework}-#{version}.gem --no-document && rm #{framework}-#{version}.gem`
end

puts "Installing ropeway..."
`gem build ropeway.gemspec`
`gem install ropeway-#{version}.gem --no-document `
`rm ropeway-#{version}.gem`

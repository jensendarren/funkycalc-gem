Gem::Specification.new do |s|
  s.name        = 'funkycalc'
  s.version     = '0.0.1'
  s.date        = '2019-10-18'
  s.summary     = "A simply ruby calculator"
  s.description = "Enables writing simple calculations using functions and get the results."
  s.authors     = ["Darren Jensen"]
  s.email       = 'darren.jensen@gmail.com'
  s.files       = ["lib/funkycalc.rb"]
  s.license     = 'MIT'
  s.homepage    = 'https://www.splitpayments.com.au'
  s.add_development_dependency 'rspec', '~> 3.9.0'
  s.add_development_dependency 'guard-rspec', '~> 4.7.0'
end
require File.expand_path('../lib/yashare/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Andrei Gridnev']
  gem.email         = ['andrew.gridnev@gmail.com']
  gem.summary       = 'Yandex Share buttons for your Rails app'
  gem.description   = 'Add and customize Yandex Share buttons to your Rails app'
  gem.homepage      = 'https://github.com/andrewgr/yashare/'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($ORS)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.name          = 'yashare'
  gem.require_paths = ['lib']
  gem.version       = Yashare::VERSION

  gem.add_runtime_dependency 'activesupport', '~> 4'

  gem.add_development_dependency 'rspec', '~> 3'
  gem.add_development_dependency 'actionpack', '~> 4'
  gem.add_development_dependency 'rubocop', '~> 0.30'
  gem.add_development_dependency 'cane', '~> 2.6', '>= 2.6.1'
end

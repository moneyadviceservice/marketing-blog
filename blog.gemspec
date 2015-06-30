$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'blog/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'blog'
  s.version     = Blog::VERSION
  s.authors     = ['David Kewal']
  s.email       = ['david.kewal@gmail.com']
  s.homepage    = "https://github.com/moneyadviceservice/marketing-blog"
  s.summary     = "The Money Advice Service Blog"
  s.description = "An engine fork of the https://github.com/publify/publify used by the Money Advice Service for its blog"
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.2.1'
end

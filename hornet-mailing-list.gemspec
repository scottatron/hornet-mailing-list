$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hornet/mailing_list/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hornet-mailing-list"
  s.version     = Hornet::MailingList::VERSION
  s.authors     = ["Scott Arthur"]
  s.email       = ["scott@scottatron.com"]
  s.homepage    = "https://github.com/scottatron"
  s.summary     = "Hornet Mailing List"
  s.description = "Hornet Mailing List"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'mailchimp-api'
end

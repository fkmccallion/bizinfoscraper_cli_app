
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bizinfoscraper_cli_app/version"

Gem::Specification.new do |spec|
  spec.name          = "bizinfoscraper"
  spec.version       = BizinfoscraperCliApp::VERSION
  spec.authors       = ["'Frank McCallion'"]
  spec.email         = ["'fkmccallion@gmail.com'"]
  spec.files         = ["bin/bizinfo"]


  spec.summary       = "This gem searches www.yellowpages.com based on a zipcode and search term and returns a list of businesses"
  spec.homepage      = "https://github.com/fkmccallion/bizinfoscraper_cli_app.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

end

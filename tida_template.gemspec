$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tida_template/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tida_template"
  s.version     = TidaTemplate::VERSION
  s.authors     = ["babaru"]
  s.email       = ["babaru.trinit@gmail.com"]
  s.homepage    = "https://github.com/babaru"
  s.summary     = "Rails Template of Tida App Group"
  s.description = "Rails Template of Tida App Group"

  s.files = Dir["{app,config,db,lib, vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 3.2.13'
  s.add_dependency 'railties', '~> 3.2'
  s.add_dependency 'jquery-rails', '~> 3.0.1'
  s.add_dependency 'jquery-ui-rails', '~> 4.0.3'
  s.add_dependency 'bootstrap-sass', '~> 2.3.2.0'
  s.add_dependency 'font-awesome-rails', '~> 3.2.0.0'
  s.add_dependency 'bootstrap-datetimepicker-rails', '~> 0.0.11'
  s.add_dependency 'bootstrap-x-editable-rails', '~> 1.4.4'
  s.add_dependency 'simple-navigation', '~> 3.11.0'
  s.add_dependency 'simple_form', '~> 2.1.0'
  s.add_dependency 'paperclip', '~> 3.4.2'
  s.add_dependency 'kaminari', '~> 0.14.1'
  s.add_dependency 'uuid', '~> 2.3.7'
  s.add_dependency 'wice_grid', '~> 3.2.1'
  s.add_dependency 'devise', '~> 2.2.4'
  s.add_dependency 'settingslogic', '~> 2.0.9'
end

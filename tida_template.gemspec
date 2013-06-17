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

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 3.2.13'
  s.add_dependency 'railties', '~> 3.2'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'jquery-ui-rails'
  s.add_dependency 'bootstrap-sass'
  s.add_dependency 'font-awesome-rails'
  s.add_dependency 'bootstrap-datetimepicker-rails'
  s.add_dependency 'bootstrap-x-editable-rails'
  s.add_dependency 'simple-navigation'
  s.add_dependency 'simple_form'
  s.add_dependency 'paperclip'
  s.add_dependency 'kaminari'
  s.add_dependency 'uuid'
  s.add_dependency 'wice_grid'
  s.add_dependency 'devise'
  s.add_dependency 'settingslogic'
end

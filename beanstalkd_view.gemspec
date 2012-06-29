# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "beanstalkd_view/version"

Gem::Specification.new do |s|
  s.name        = 'beanstalkd_view'
  s.version     = BeanstalkdView::VERSION
  s.date        = '2012-05-24'
  s.summary     = "A Sinatra app to view/manage beanstalkd queues that can be embedded in a Rails app similar to what's available in Resque"
  s.description = "A Sinatra app to view/manage beanstalkd queues that can be embedded in a Rails app similar to what's available in Resque"
  s.authors     = ["Dennis Kuczynski"]
  s.email       = 'dennis.kuczynski@gmail.com'
  s.homepage    =
    'https://github.com/denniskuczynski/beanstalkd_view'

  s.files             = %w( README.md Gemfile Rakefile MIT-LICENSE.txt )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.test_files    = Dir.glob("spec/**/*")
  s.require_paths = ["lib"]

  s.add_dependency "sinatra"
  s.add_dependency "sinatra-flash"
  s.add_dependency "beanstalk-client",         ">= 1.1.1"
  s.add_dependency "json"

  s.add_development_dependency "rack-test"
  s.add_development_dependency "rspec"
  s.add_development_dependency "capybara"
end

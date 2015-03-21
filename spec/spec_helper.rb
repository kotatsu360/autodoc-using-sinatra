# -*- coding: utf-8 -*-
require 'rspec'
require 'rack/test'
require 'json'

require 'active_support/core_ext/module/concerning'
require 'autodoc'

require_relative '../app'

module RSpecMixin

  include Rack::Test::Methods  
  def app() SinatraAutodoc::Server end
end

RSpec.configure do |config|

  config.include RSpecMixin    
  config.fail_fast = true

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end


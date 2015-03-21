# -*- coding: utf-8 -*-

require 'sinatra/base'
require 'sinatra/json'

module SinatraAutodoc
  class Server < Sinatra::Base
    
    get '/?' do
      json({ message: 'hello :)' })
    end
  end
end

require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    pr = params
    @name = pr[:name]
    @coach = pr[:coach]
    @pg = pr[:pg]
    @sg = pr[:sg]
    @pf = pr[:pf]
    @sf = pr[:sf]
    @c = pr[:c]
    erb :team
  end

end

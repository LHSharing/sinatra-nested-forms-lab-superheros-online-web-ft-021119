require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new
      @team.name = params[:team][:name]
      @team.motto = params[:team][:motto]
      

      #binding.pry
      params[:team][:members].each do |stats|
        Hero.new(stats)
    end
    
    @members = Hero.all
    
     #binding.pry
      erb :team
    end


end




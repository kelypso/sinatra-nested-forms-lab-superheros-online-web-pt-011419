require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :super_hero
    end
    
    post '/teams'do 
      @team = Team.new(params[:pirate])

      params[:hero][:teams].each do |ship_data|
        Ship.new(ship_data)
      end

      @ships = Ship.all
      erb :'pirates/show'
    end

end

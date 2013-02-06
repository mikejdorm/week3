Homework3::Application.routes.draw do
 
 root to: 'menu#display' 
 get '/rps/:choice', :controller => 'rps', :action => 'result', :as => :rps
 get '/rps', :controller => 'rps', :action => 'play', :as => :rps_game

 get '/poker', :controller => 'poker', :action => 'deal', :as => :poker
 get '/dice', :controller => 'dice', :action => 'play', :as => :dice
 get '/dice/roll', :controller => 'dice', :action => 'first_roll', :as => :first_roll
 post '/dice/roll', :controller => 'dice', :action => 'roll', :as => :roll

 get '/menu', :controller => 'menu', :action => 'display', :as => :main_menu
 

 
end

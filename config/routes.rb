Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Partie new
  get "new", to: "games#new", as: :new
  # 3. ajouter cette phrase
  # 4.créer la vue associée app/views/games/new.html.erb

  # Partie score
  get "score", to: "games#score"
  post "score", to: "games#score"
  # 3. ajouter cette phrase
  # 4.créer la vue associée app/views/games/score.html.erb

  # cmd rails routes
  # Prefix Verb URI Pattern      Controller#Action
  #    new GET  /new(.:format)   games#new
  #  score POST /score(.:format) games#score
end

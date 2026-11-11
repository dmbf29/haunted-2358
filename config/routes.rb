Rails.application.routes.draw do
  resources :haunted_houses, only: [ :show ] do
    resources :monsters, only: [ :new, :create ]
  end
  resources :monsters, only: [ :destroy ]
end


# As a user I can see one house's monsters
# haunted_houses#show

# As a user I can add a monster in a house
# monsters#new
# monsters#create

# As a user I can remove a monster
# monsters#destroy

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %i[index new edit create destroy] do
    resources :doses, only: %i[new create destroy]
  end
end


  #  resources :reviews, only: [ :new, :create ]

Rails.application.routes.draw do
  get 'charts/index'
  get 'charts/new'
  get 'charts/edit'
  get 'charts/show'
resources :artists do

  resources :songs, only: [:index, :show, :new, :create, :destroy]

end

resources :songs do

  resources :charts

end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

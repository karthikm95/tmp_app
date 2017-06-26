Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'menu/findall', to: 'menu#findall'
  get 'menu/find', to: 'menu#find'
  resources :menu
end

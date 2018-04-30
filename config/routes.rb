Rails.application.routes.draw do

  resources :gossips, :comments

  get 'issue', to: 'gossips#issue', as: :issue

  root 'static_pages#home', as: :root

end

Rails.application.routes.draw do
  devise_for :users
  resources :annonces, path: "achat-immobilier" do
    get :strasbourg, on: :collection
  end
  root to: "pages#home"
  get "contact", to: "pages#contact"
  post "contact_send", to: "pages#contact_send"

  get "achat-immobiler/strasbourg", to: "annonces#strasbourg"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

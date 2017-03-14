Rails.application.routes.draw do
  resources :students
  resources :capstones
  resources :skills
  resources :experiences
  resources :educations
  namespace :api do
    namespace :v2 do
      resources :students
      resources :capstones
      resources :skills
      resources :experiences
      resources :educations
    end
  end
end

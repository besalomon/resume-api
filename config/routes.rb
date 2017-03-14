Rails.application.routes.draw do
  resources :students
  resources :capstones
  resources :skills
  resources :experiences
  resources :educations
end

Rails.application.routes.draw do
  resources :workout_exercises
  resources :workouts
  resources :users
  resources :exercises
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

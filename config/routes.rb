Rails.application.routes.draw do
  resources :grade_assignments
  resources :schoolclasses_contain_students
  resources :school_classes
  resources :teachers_teach_branches
  resources :grades_evaluate_branches
  resources :branches
  resources :teachers
  resources :students
  resources :grades
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"

end

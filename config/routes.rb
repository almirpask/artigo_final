Rails.application.routes.draw do

  root to: 'site/home#index'

  #root_path: to :
  resources :achievements_students
  resources :achievements
  resources :questionnaires_students
  resources :students
  resources :alternatives
  resources :questionnaires
  resources :subjects_teachers
  resources :teachers
  resources :subjects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :teachers
  resources :resumetrancerecs
  resources :memos
  resources :types
  resources :fields
  resources :places
  resources :exams
  resources :recommendeds
  resources :mediations
  resources :interviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

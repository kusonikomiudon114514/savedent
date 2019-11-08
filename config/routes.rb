Rails.application.routes.draw do
  resources :subjects
  get 'mensetu/top'

  get 'reportmenu/menu'

  resources :students
  resources :reportschools
  resources :rirekisyos
  get 'rirekisyo_tenso', to: 'rirekisyos#tenso'
  get 'home/top'

  post '/reportjobs_field_search',to:'reportjobs#field_search'
  get '/reportjobs_field_search',to:'reportjobs#index'
 
  post '/reportjobs_zigyousyo_search',to:'reportjobs#zigyousyo_search'
  get '/reportjobs_zigyousyo_search',to:'reportjobs#index'

  post '/reportjobs_field_search',to:'reportjobs#field_search'
  get '/reportjobs_field_search',to:'reportjobs#index'

  devise_for :users
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
  resources :reportjobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#top"
end

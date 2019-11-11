Rails.application.routes.draw do
  get 'mensetu/top'

  get 'reportmenu/menu'

  resources :students
  resources :reportschools
  resources :rirekisyos
  get 'rirekisyo_tenso', to: 'rirekisyos#tenso'
  get 'home/top'

  post '/reportschools_place_search',to:'reportschools#place_search'							
  get '/reportschools_place_search',to:'reportschools#index'																										
  post '/reportschools_place_search',to:'reportschools#place_search'

  post '/reportschools_type_search',to:'reportschools#type_search'							
  get '/reportschools_type_search',to:'reportschools#index'																										
  post '/reportschools_type_search',to:'reportschools#type_search'

  post '/reportschools_field_search',to:'reportschools#field_search'							
  get '/reportschools_field_search',to:'reportschools#index'																										
  post '/reportschools_field_search',to:'reportschools#field_search'

  post '/reportschools_search',to:'reportschools#search'							
  get '/reportschools_search',to:'reportschools#index'																										
  post '/reportschools_search',to:'reportschools#search'

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

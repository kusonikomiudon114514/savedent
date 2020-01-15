Rails.application.routes.draw do
  get 'search/top'

  resources :rjlogs
  resources :newpapers
  resources :saws
  resources :mensetus
  get 'manage/school'

  resources :rslogs
  resources :subjects
  get 'mensetu/top'

  get 'memos/importantmemo'

  get 'reportmenu/menu'

  get 'manage/school'

  resources :students
  resources :reportschools
  resources :rirekisyos
  get 'rirekisyo_tenso', to: 'rirekisyos#tenso'
  get 'home/top'
  post 'tenso_save',to: 'rirekisyos#tensosave'
  get 'home/sensei' 

  post '/searchs_search',to:'search#search'							
  get '/searchs_search',to:'search#top'				

  post '/searchs_localname1_search',to:'search#localname1_search'							
  get '/searchs_localname1_search',to:'search#top'		

  post '/searchs_localname2_search',to:'search#localname2_search'							
  get '/searchs_localname2_search',to:'search#top'			

  post '/searchs_place_search',to:'search#place_search'							
  get '/searchs_place_search',to:'search#top'					
  																					
  post '/searchs_type_search',to:'search#type_search'							
  get '/searchs_type_search',to:'search#top'																										

  post '/searchs_field_search',to:'search#field_search'							
  get '/searchs_field_search',to:'search#top'				

  post '/searchs_saw_search',to:'search#saw_search'
  get '/searchs_saw_search',to:'search#tpo' 

  post '/reportschools_localname1_search',to:'reportschools#localname1_search'							
  get '/reportschools_localname1_search',to:'reportschools#index'																										

  post '/reportschools_localname2_search',to:'reportschools#localname2_search'							
  get '/reportschools_localname2_search',to:'reportschools#index'																										

  post '/reportschools_place_search',to:'reportschools#place_search'							
  get '/reportschools_place_search',to:'reportschools#index'																										

  post '/reportschools_type_search',to:'reportschools#type_search'							
  get '/reportschools_type_search',to:'reportschools#index'																										

  post '/reportschools_field_search',to:'reportschools#field_search'							
  get '/reportschools_field_search',to:'reportschools#index'																										

  post '/reportschools_search',to:'reportschools#search'							
  get '/reportschools_search',to:'reportschools#index'																										

  post '/manage_school_manydestory',to:'manage#manydestory'							
  get '/manage_school_manydestory',to:'manage#school'		
  
  post '/manage_school_lotdestory',to:'manage#lotdestory'							
  get '/manage_school_lotdestory',to:'manage#school'		

  post '/manage_school_search_year',to:'manage#search_year'							
  get '/manage_school_search_year',to:'manage#school'					

  post '/manage_school_survey_year',to:'manage#survey_year'							
  get '/manage_school_survey_year',to:'manage#school'																										

  post '/reportjobs_field_search',to:'reportjobs#field_search'
  get '/reportjobs_field_search',to:'reportjobs#index'
 
  post '/reportschools_saw_search',to:'reportschools#saw_search'
  get '/reportschools_saw_search',to:'reportschools#index'
 
  post '/reportjobs_zigyousyo_search',to:'reportjobs#zigyousyo_search'
  get '/reportjobs_zigyousyo_search',to:'reportjobs#index'

  post '/reportjobs_field_search',to:'reportjobs#field_search'
  get '/reportjobs_field_search',to:'reportjobs#index'

  post '/mensetus_status_search',to:'mensetus#status_search'
  get '/mensetus_status_search',to:'mensetus#index'

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

Rails.application.routes.draw do
  devise_for :users

  root to: 'visitors#index'

  resources :students do
    get :subjects
  end

  resources :teachers
  resources :report_subjects
  get '/reports/subjects', to: 'reports#subjects'
end

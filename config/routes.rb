Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  root to: 'students#index'
  resources :teachers
  resources :report_subjects
  get '/reports/subjects', to: 'reports#subjects'
end

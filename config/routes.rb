Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  root to: 'students#index'
  resource :teachers
  resource :report_subjects
  get '/reports/subjects', to: 'reports#subjects'
end

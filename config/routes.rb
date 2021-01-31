Rails.application.routes.draw do
  # /
  root to: "records#index"

  # record
  resources :record

  #devise
  devise_for :users
  # Rails.application.routes.draw do
  #   devise_for :users, controllers: {
  #     registrations: 'users/registrations',#登録
  #     sessions: 'users/sessions'#ログイン
  #   }
  # end
end

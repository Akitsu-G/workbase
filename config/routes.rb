Rails.application.routes.draw do
  # /
  root to: "home#index"

  # devise
  # Rails.application.routes.draw do
  #   devise_for :users, controllers: {
  #     registrations: 'users/registrations',#登録
  #     sessions: 'users/sessions'#ログイン
  #   }
  # end
end

Rails.application.routes.draw do
  get 'inquiry/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'welcome/index'
    get 'inquiry' => 'inquiry#index'              # 入力画面
    post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
    post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面

 
resources :notes

  	authenticated :user do
  		root 'notes#index'
  	end
  
  root 'welcome#index'

end

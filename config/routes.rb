Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top/index'
  get 'login_test/index'
  post 'login_test/index'
  get 'login_test/create'
  post 'login_test/create'

  post 'login_test/auth'
  
  get 'login/index'

  get 'login/auth'
  post 'login/auth'
  

end

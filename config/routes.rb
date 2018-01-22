Rails.application.routes.draw do
  get 'mypage/info'

  get 'grade/inquiry'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ログイン
  get 'top/index'

  get 'login_test/index'
  post 'login_test/index' # アカウント作成

  get 'login_test/create'
  post 'login_test/create'

  post 'login_test/auth'
  
  get 'login/index'

  get 'login/auth'
  post 'login/auth'

  get 'login/id'
  post 'login/id'

  get 'student/list'

  get 'student/edit/:id', to: 'student#edit'
  patch 'student/edit/:id', to: 'student#update'

  get 'student/timetable'

  get 'student/info'

  # get 'student/register'
  
  # get 'student/password'

  # get 'student/stu_info'
  
  # get 'student/stu_password'

  # post 'student/password_comp'
  
  # post 'student/login_check' 

  get 'grade/inquiry'

  get 'mypage/top'

  get 'password/edit'

  get 'password/comp'
  
end

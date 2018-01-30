Rails.application.routes.draw do
  get 'student_new/new'

  get 'mypage/info'

  get 'grade/inquiry'

  get 'top/test'
  get 'mypage/mypage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ログイン
  get 'top/index'
  get 'top/adminindex'

  get 'login_test/index'
  post 'login_test/index' # アカウント作成(学生)

  get 'login_test/teachers_new'
  post 'login_test/teachers_new' # アカウント作成(教師)


  get 'login_test/create'
  post 'login_test/create'
  
  get 'login_test/create_teachers'
  post 'login_test/create_teachers'

  post 'login_test/auth'
  
  get 'login/index'
  get 'login/teacher'
  

  get 'login/auth'
  post 'login/auth'

  get 'login/logout'
  post 'login/logout'

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


  get'grade/datacreate'
  post'grade/datacreate'
  get 'grade/create'
  post 'grade/create'

  get 'studentmanagement/index'  
  get 'studentmanagement/new'
  post 'studentmanagement/create'
  
  
end

Rails.application.routes.draw do
  get 'student/register'
  
    get 'student/password'
  
    get 'student/stu_info'
  
    get 'student/timetable'
  
    get 'student/stu_password'
  
    get 'student/grade_inquiry'

    post 'student/password_comp'
    
    post 'student/login_check'

    get 'top/test'
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
  
  get 'login/id'
  post 'login/id'
  

end

class LoginTestController < ApplicationController
    skip_before_action :check_logined
    def index
        @student = Student.new
    end
    def teachers_new
        @teacher = Teacher.new        
    end 
    def create 
        Student.create(person_params)
    end
    def create_teachers
        Teacher.create(teachers_params)
    end 

    private 
    def person_params
        params.require(:student).permit(:id,:password, :password_confirmation,:k_class,:number,:name)
    end 
    private 
    def teachers_params
        params.require(:teacher).permit(:id,:password, :password_confirmation,:k_class,:name)
    end 

end

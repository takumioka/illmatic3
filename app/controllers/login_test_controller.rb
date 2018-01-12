class LoginTestController < ApplicationController
    def index
        @student = Student.new
    end
    def create 
        Student.create(person_params)
    end

    private 
    def person_params
        params.require(:student).permit(:student_no,:password, :password_confirmation,:k_class,:number,:name)
    end 
end

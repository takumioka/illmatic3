class StudentmanagementController < ApplicationController
    def index
    end 
    def new
        @Student = Student.new    
      end
    def create 
        Student.create(person_params)
    end
    private 
    def person_params
        params.require(:student).permit(:id,:password, :password_confirmation,:k_class,:number,:name)
    end 
    
end

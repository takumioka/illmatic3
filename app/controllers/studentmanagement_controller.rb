class StudentmanagementController < ApplicationController    
    def index
        render :layout => 'layouts/admin'                 
    end 
    def new
        @Student = Student.new
        render :layout => 'layouts/admin'         
    end
    def create 
        Student.create(person_params)
    end
    def search
        render :layout => 'layouts/admin'         
        
    end 
      private 
      def person_params
          params.require(:student).permit(:id,:password, :password_confirmation,:k_class,:number,:name)
      end 
    
end

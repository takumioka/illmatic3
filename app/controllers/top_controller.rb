class TopController < ApplicationController
    def index
        data = Student.find(session[:usr])
        session[:student_no]=data.name
        @id = session[:student_no]        
    end 
    def test 
        @id = session[:student_no]
    end
    

end

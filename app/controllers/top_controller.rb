class TopController < ApplicationController
    def index
        data = Student.find(session[:usr])
        session[:name]=data.name
    end
    def adminindex
        data = Teacher.find(session[:admin] )
        session[:name]=data.name        
        render :layout => 'layouts/admin' 
        
    end 
    def test 
        @id = session[:student_no]
    end
    

end

class TopController < ApplicationController
    def index
        data = Student.find(session[:usr])
        session[:student_no]=data.name
        @id = session[:student_no]        
    end 
    def test 
        @id = session[:student_no]
    end
    before_action :check_logined
    private 
        def check_logined 
            if session[:usr] then
                begin 
                    @usr = Student.find(session[:usr])
                rescue ActiveRecord::Record::RecordnotFound
                    reset_seession
                end 
            end 

            unless @usr 
                flash[:refere] = request.fullpath 
                redirect_to controller: :login,  action: :index
            end 
        end
    

end

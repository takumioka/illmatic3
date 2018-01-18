class TopController < ApplicationController
    def index 
        @name=params[:student_no]
        
    end 
    def test 
        @id = cookies[:testid]
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

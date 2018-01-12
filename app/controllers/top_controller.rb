class TopController < ApplicationController
    def index 
    end 
    before_action :check_logined,only: :view
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

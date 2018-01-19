class LoginController < ApplicationController
    def index 
    end
    def auth 
        usr=Student.find_by(student_no: params[:student_no])
        if usr && usr.authenticate(params[:password]) then  
            session[:usr] = usr.id 
            redirect_to controller: :top,  action: :index ,student_no:  params[:student_no] 

        else 
            @error="ユーザー名/パスワードが違う"           
            redirect_to controller: :login,  action: :index ,eroor: @error            
            
        end 
    end

end

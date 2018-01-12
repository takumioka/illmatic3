class LoginController < ApplicationController
    def index 
        
    end
    def auth 
        usr=Student.find_by(student_no: params[:student_no])
        if usr && usr.authenticate(params[:password]) then  
            reset_session
            session[:usr] = usr.id 
            redirect_to params[:referer]
        else 
            flash.now[:referer] = params[:referer] 
            @error="ユーザー名/パスワードが違う"
            render 'index'
        end 
    end 
end

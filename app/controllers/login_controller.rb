class LoginController < ApplicationController
    def index 
        cookies[:testid]={value:"1クッキー",expires:3.months.from_now,http_only:true}
    end
    def auth 
        usr=Student.find_by(student_no: params[:student_no])
        if usr && usr.authenticate(params[:password]) then  
            reset_session
            session[:usr] = usr.id 
            redirect_to controller: :top,  action: :index ,student_no:  params[:student_no] 

        else 
            flash.now[:referer] = params[:referer]
            
            @error="ユーザー名/パスワードが違う"
            redirect_to action: 'index'
            
        end 
    end

end

class LoginController < ApplicationController
    skip_before_action :check_logined
    def index 
        render :layout => nil        
    end
    def teacher 
        render :layout => nil        
    end
    def auth 
        usr=Student.find_by(student_no: params[:student_no])
        admin=Teacher.find_by(teacher_no: params[:teacher_no])
        
        if usr && usr.authenticate(params[:password]) then  
            session[:usr] = usr.id 
            redirect_to controller: :top,  action: :index ,student_no:  params[:student_no] 

        else
            if admin && admin.authenticate(params[:password]) then 
                session[:admin] = admin.id 
                redirect_to controller: :top,  action: :adminindex  
            else    
                @error="ユーザー名/パスワードが違う"           
                redirect_to controller: :login,  action: :index ,eroor: @error
            end       
            
        end 
    end

    def logout 
        reset_session
        redirect_to controller: :login,  action: :index     
    end 

end

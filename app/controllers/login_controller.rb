class LoginController < ApplicationController
    skip_before_action :check_logined
    def index 
        render :layout => nil        
    end
    def teacher 
        render :layout => nil        
    end
    def auth 
        usr=Student.find_by(id: params[:id])
        admin=Teacher.find_by(id: params[:id])
        
        if usr && usr.authenticate(params[:password]) then  
            session[:usr] = usr.id 
            redirect_to controller: :top,  action: :index 

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

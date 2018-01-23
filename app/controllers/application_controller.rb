class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
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

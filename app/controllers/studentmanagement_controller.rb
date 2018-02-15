class StudentmanagementController < ApplicationController    
    def index
        render :layout => 'layouts/admin'                 
    end 
    def new
        @Student = Student.new
        render :layout => 'layouts/admin'         
    end
    def create 
        Student.create(person_params)
    end
    def search
        render :layout => 'layouts/admin'        
        
    end
    def infonew
        render :layout => 'layouts/admin'                         
    end
    def search_result
        atai=params[:atai]
        if atai.eql? 'id' then
            @stundet=Student.where(id: params[:keyword])            
        elsif atai.eql? 'name' then
            @stundet=Student.where(name: params[:keyword])           
        elsif atai.eql? 'k_class' then
            @stundet=Student.where(k_class: params[:keyword])            
        end
    end
    def timetablenew
        excelreading
    end 
    def timetablecreate
        excelreading
    end 


      private 
      def person_params
          params.require(:student).permit(:id,:password, :password_confirmation,:k_class,:number,:name)
      end

      private 
      def excelreading #読み込み
        # Excelファイルを読み込む
        excel = Spreadsheet.open('db/timetable.xls', 'r')
        sheet = excel.worksheet(0)
        @timetable=sheet    
        
      end 
        
end

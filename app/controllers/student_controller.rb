class StudentController < ApplicationController

  def list
    @msg = '学生一覧'
    @data = Student.all
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    obj = Student.find(params[:id])
    obj.update(student_params)
    redirect_to '/student/list'
  end
  def timetable
    excelreading
  end 
    


  private
  def student_params
    params.require(:student).permit(:student_no, :password_digest, :k_class, :number, :name)
  end
  private 
  def excelreading #読み込み
    # Excelファイルを読み込む
    excel = Spreadsheet.open('db/timetable.xls', 'r')
    sheet = excel.worksheet(0)
    @timetable=sheet    
    
  end 

end

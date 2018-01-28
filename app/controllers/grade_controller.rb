class GradeController < ApplicationController
  def inquiry
    nukidasi=Grade.where(student_id:session[:usr])
    @keka = nukidasi.joins(:student,:subject).select("subjects.subject_name,grades.grade")
        
  end
  def datacreate
    @tests=Grade.new
  end 
  def create 
    @grade=Grade.create(person)
    if @grade.save 
      redirect_to 'https://www.google.co.jp/'
    else 
      redirect_to 'https://www.yahoo.co.jp/'
    end
      

  end

  private 
  def person
      params.require(:grade).permit(:students_id,:subjects_id, :grade)
  end 

end

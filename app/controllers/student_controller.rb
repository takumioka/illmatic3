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

  private
  def student_params
    params.require(:student).permit(:student_no, :password_digest, :k_class, :number, :name)
  end

end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movievcs.first)
require "csv"

CSV.foreach('db/student_test.csv') do |s|
  Student.create(:id => s[0], :password_digest => BCrypt::Password.create(s[1]), :k_class => s[2], :number => s[3], :name => s[4])
end

CSV.foreach('db/teacher_test.csv') do |t|
    Teacher.create(:id => t[0], :password_digest => BCrypt::Password.create(t[1]), :k_class => t[2], :name => t[3])
end

CSV.foreach('db/subject_test.csv') do |s|
    Subject.create(:subject_name => s[0])
end

CSV.foreach('db/grade_test.csv') do |g|
    Grade.create(:grade => g[0], :student_id => g[1], :subject_id => g[2])
end
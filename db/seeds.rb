# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movievcs.first)

Grade.create(student_id:1000,subject_id:2,grade:"優")

Bulletinboard.create(student_id:1000,messagecontent:"こんにちは",nickname:"匿名")
Student.create(id:1001,assword_digest:"12345",k_class:"R4A1",number:5,name:'あほ')

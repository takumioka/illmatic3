# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Subject.create(subject_name:"アルゴリズム")
Subject.create(subject_name:"セキュリティ")
Subject.create(subject_name:"データベース")
Grade.create(students_id:1,subjects_id:1,grade:"可")

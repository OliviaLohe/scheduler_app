# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trainers = Trainer.create([
{name: 'Trainer 1'},
{name: 'Trainer 2'},
{name: 'Trainer 3'}
])

trainer1 = Trainer.where(name: 'Trainer 1')
trainer2 = Trainer.where(name: 'Trainer 2')
trainer3 = Trainer.where(name: 'Trainer 3')

course1 = Course.where(name: 'WISHA-WWA')
course2 = Course.where(name: 'WISHA-EWA')
course3 = Course.where(name: 'OSHA')
course4 = Course.where(name: 'HIPAA_OVERVIEW')
course5 = Course.where(name: 'HIPAA_FULL')
course6 = Course.where(name: 'BLS_WWA')
course7 = Course.where(name: 'BLS-EWA')
course8 = Course.where(name: 'INFECTION CONTROL')


courses_trainers = Course_Trainer.create([
  { course_id: course1, trainer_id: trainer1},
  { course_id: course2, trainer_id: trainer1},
  { course_id: course3, trainer_id: trainer1},
  { course_id: course4, trainer_id: trainer1},
  { course_id: course5, trainer_id: trainer1},
  { course_id: course6, trainer_id: trainer1},
  { course_id: course7, trainer_id: trainer1},
  { course_id: course8, trainer_id: trainer1},
  { course_id: course1, trainer_id: trainer2},
  { course_id: course2, trainer_id: trainer2},
  { course_id: course5, trainer_id: trainer2},
  { course_id: course1, trainer_id: trainer3},
  { course_id: course3, trainer_id: trainer3},
  { course_id: course4, trainer_id: trainer3}
])

# course_id: Course.where(name: 'WISHA-EWA').pick(:id) },




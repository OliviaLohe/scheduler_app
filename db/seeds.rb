# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

courses = Course.create([
  { name: 'WISHA-WWA', frequency: 365, duration: 120, base_price: 44700 },
  { name: 'WISHA-EWA', frequency: 365, duration: 120, base_price: 54700 },
  { name: 'OSHA', frequency: 365, duration: 120, base_price: 54700 },
  { name: 'HIPAA-OVERVIEW', frequency: 365, duration: 60, base_price: 27700 },
  { name: 'HIPAA-FULL', frequency: 365, duration: 120, base_price: 44700 },
  { name: 'BLS-WWA', frequency: 730, duration: 150, base_price: 44700 },
  { name: 'BLS-EWA', frequency: 730, duration: 150, base_price: 54700 },
  { name: 'INFECTION CONTROL', frequency: 365, duration: 60, base_price: 27700 },
])

trainers = Trainer.create([
  { name: 'Trainer 1', course_id: Course.where(name: 'WISHA-WWA').pick(:id)},
  { name: 'Trainer 1', course_id: Course.where(name: 'WISHA-EWA').pick(:id) },
  { name: 'Trainer 2', course_id: Course.where(name: 'WISHA-WWA').pick(:id) },
  { name: 'Trainer 2', course_id: Course.where(name: 'WISHA-EWA').pick(:id) },
  { name: 'Trainer 2', course_id: Course.where(name: 'INFECTION CONTROL').pick(:id) },
  { name: 'Trainer 3', course_id: Course.where(name: 'HIPAA-OVERVIEW').pick(:id) },
  { name: 'Trainer 3', course_id: Course.where(name: 'HIPAA-FULL').pick(:id) },
  { name: 'Trainer 3', course_id: Course.where(name: 'WISHA-WWA').pick(:id) }
])




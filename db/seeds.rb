# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file currently only contains default course data. Client  records will be added inot the database via the upload 
# function in clients/index.erb, and events will be added via events/new.erb. Trainer data will need to
# be added manually, or a file upload will need to be added.
# Additionally, the associations between trainers and courses will need to be added manually, once trainers are added,
# or that functionality will need to be build into a trainer data file upload function.

courses = Course.create([
  { name: 'WISHA-WWA', frequency: 365, duration: 120, base_price: 44700 },
  { name: 'WISHA-EWA', frequency: 365, duration: 120, base_price: 54700 },
  { name: 'OSHA', frequency: 365, duration: 120, base_price: 54700 },
  { name: 'HIPAA-OVERVIEW', frequency: 365, duration: 60, base_price: 27700 },
  { name: 'HIPAA-FULL', frequency: 365, duration: 120, base_price: 44700 },
  { name: 'BLS-WWA', frequency: 730, duration: 150, base_price: 44700 },
  { name: 'BLS-EWA', frequency: 730, duration: 150, base_price: 54700 },
  { name: 'INFECTION CONTROL', frequency: 365, duration: 60, base_price: 27700 }
])





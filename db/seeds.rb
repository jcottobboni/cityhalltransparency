# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
caturai = City.find_by_name("Caturaí")

Department.create(name: 'PREFEITURA MUNICIPAL DE CATURAI', registration: 1, city_id:caturai.id)
Department.create(name: 'FUNDEB DE CATURAI', registration: 3, city_id:caturai.id)
Department.create(name: 'FMS DE CATURAI', registration: 5, city_id:caturai.id)
Department.create(name: 'FMDCA DE CATURAI', registration: 7, city_id:caturai.id)
Department.create(name: 'FMAS DE CATURAI', registration: 8, city_id:caturai.id)
Department.create(name: 'FMHIS DE CATURAI', registration: 9, city_id:caturai.id)

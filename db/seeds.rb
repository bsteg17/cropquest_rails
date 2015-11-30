# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

EquipmentType.create(name: "Two-wheel tractor", description: "Tractor with one axle, self-powered, self-propelled")
EquipmentType.create(name: "Cultivator", description: "Softens the soil")
EquipmentType.create(name: "Seed drill", description: "Plants seeds in soil")
EquipmentType.create(name: "Rotator", description: "Sprinkler, waters crops")
EquipmentType.create(name: "Subsoiler", description: "Loosens deep soil")

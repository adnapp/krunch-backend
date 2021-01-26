# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

Exercise.destroy_all
# User.destroy_all
Workout.destroy_all
WorkoutExercise.destroy_all


User.create({name: "Adam", age: 20, bio: "Student of the gym", height: "6'", weight: 200})

u1 = User.first 


Workout.create({date: '2020-12-12', notes: "chest workout was great", name: "Chest Day", user: u1})
Workout.create({date: '2020-12-13', notes: "leg workout was great", name: "Leg Day", user: u1})

w1 = Workout.first 
w2 = Workout.second


csv_text = File.read(Rails.root.join('lib', 'seeds', 'exercises.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    # puts row.to_hash

    e = Exercise.new 
    e.exercise = row['Exercise']
    e.equipment = row['Equipment']
    e.exerciseType = row['Exercise Type']
    e.majorMuscle = row['Major Muscle']
    e.minorMuscle = row['Minor Muscle']
    e.example = row['Example'].split(' ')[1..-1].join(' ')[1..-1][0...-1]
    e.notes = row['Notes']
    e.modifications = row['Modifications']
    e.save
  end


e1 = Exercise.first 
e2 = Exercise.second
e2 = Exercise.third


WorkoutExercise.create({workout: w1, exercise: e1})
WorkoutExercise.create({workout: w1, exercise: e2})
WorkoutExercise.create({workout: w1, exercise: e3})
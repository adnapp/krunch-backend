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
Weight.destroy_all


User.create({name: "Adam", age: 20, bio: "Student of the gym", height: "6'", weight: 200})

u1 = User.first 

weight1 = Weight.create({date: '2020-12-12', weight: 196, user: u1})
weight2 = Weight.create({date: '2020-12-13', weight: 196, user: u1})
weight3 = Weight.create({date: '2020-12-14', weight: 197, user: u1})
weight4 = Weight.create({date: '2020-12-16', weight: 198, user: u1})
weight5 = Weight.create({date: '2020-12-17', weight: 195, user: u1})
weight6 = Weight.create({date: '2020-12-18', weight: 196, user: u1})
weight7 = Weight.create({date: '2020-12-27', weight: 203, user: u1})
weight8 = Weight.create({date: '2020-12-29', weight: 200, user: u1})
weight9 = Weight.create({date: '2021-01-02', weight: 201, user: u1})


Workout.create({date: '2020-12-12', notes: "chest workout was great", name: "Chest Day", user: u1})
Workout.create({date: '2020-12-13', notes: "leg workout was great", name: "Leg Day", user: u1})

w1 = Workout.first 
w2 = Workout.second


csv_text = File.read("/app/lib/seeds/exercises.csv")
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
e3 = Exercise.third


WorkoutExercise.create({workout: w1, exercise: e1, reps: 10})
WorkoutExercise.create({workout: w1, exercise: e2, reps: 15})
WorkoutExercise.create({workout: w1, exercise: e3, reps: 20})

puts "Seeds planted 🌱"


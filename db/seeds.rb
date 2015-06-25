# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
julie = Candidate.create!(
  name: "Julie Andrews",
  photo_url: "http://bit.ly/1GKPiiX",
  twitter: "HottestStartups",
  website: "http://t.co/3gDtETAFpu"
)
olo = Candidate.create!(
  name: "Olo Wigley",
  photo_url: "http://bit.ly/1CHvFHF",
  twitter: "twoheadlines",
  website: "http://codeforamerica.org"
)

name_question = Question.create!(body: "What... is your name?")
quest_question = Question.create!(body: "What... is your quest?")
color_question = Question.create!(body: "What... is your favorite color?")

Answer.create!(body: "Julie", question: name_question, candidate: julie)
Answer.create!(body: "world peace", question: quest_question, candidate: julie)
Answer.create!(body: "grey", question: color_question, candidate: julie)
Answer.create!(body: "Olo", question: name_question, candidate: olo)
Answer.create!(body: "food", question: quest_question, candidate: olo)
Answer.create!(body: "purple", question: color_question, candidate: olo)

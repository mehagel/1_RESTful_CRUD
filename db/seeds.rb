require 'faker'

20.times do 
	Note.create(title:Faker::Company.bs, content:Faker::Company.catch_phrase)
end
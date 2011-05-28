require 'faker'

namespace :db do
	desc "Fill in database with sample data"
	task :populate => :environment do
		Rake::Task['db:reset'].invoke
		admin = User.create!(:name => "Example user",
								:email => "example@example.com",
								:password => "foobar",
								:password_confirmation => "foobar")
		admin.toggle!(:admin)

		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@example.com"
			password = "password"
			User.create!(:name => name,
										:email => email,
										:password => password,
										:password_confirmation => password)
		end
		User.all(:limit =>7 ).each do
			50.times do 
				user.microposts.create!(:content => Faker::Lorem.sentence(5))
			end
		end
	end
end

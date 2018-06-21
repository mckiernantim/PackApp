namespace :dummy do
    task create_users: :environment do
        10.times do |i|
            password = Faker::Internet.user_name
            User.create(
                email: Faker::Internet.email,
                password: password,
                password_confirmation: password,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name
            )
        end
    end

    task create_dogs: :enviroment do 
        10.times do |i|
            Dog.create(
                nameL Faker::Name
                
            )

    end
end



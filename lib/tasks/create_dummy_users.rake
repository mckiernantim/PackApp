namespace :dummy do
    #  run  rake dummy:create_users
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
        # run rake dummy:create_dogs  
        # this will only populate the NAME and ID 
        
    task create_dogs: :environment do
        users= User.all
        p users
        10.times do |i|
            Dog.create(
                name: Faker::Dog.name,
                
                user_id: User.all[i].id
                
)
            end
        end
            # run rake dummy:create_walk_requests to populate a table for requests
            # only values are user_id walk_id and dog_id currently.
        task create_walk_requests: :environment do
            users= User.all
            dogs =Dog.all
            10.times do |i|
                WalkRequest.create(
                    user_id: User.all[i].id,
                    walker_id: User.all[i+1].id,
                    dog_id: Dog.all[i].id,
                    date: Faker::Date.forward(14)
                        )
        end
    end
        #run rake dummy:delete_whatever to drop all data
    task delete_users: :environment do
        User.destroy_all
    end
    task delete_dogs: :environment do
        Dog.destroy_all
    end
    task delete_walk_requests: :environment do
        WalkRequest.destroy_all
    end
end


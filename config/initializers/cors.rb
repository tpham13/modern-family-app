# What does it say here: we're going to insert a level of middleware here and 
# we're going to use cors module to do it and all the rules we're going to put inside here is going to be intercept by Rails config

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do 
        # this allow whatever domain you want here
        origins "http://localhost:3000"
        resource "*", headers: :any, 
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        # crendentials allow you to put the headers back and forth front end and back end
credentials: true
    end
 
end
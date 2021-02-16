
# Use this line of code when the app is ready to deploy
# if Rails.env === 'production' 
#     Rails.application.config.session_store :cookie_store, key: '_your-app-name', domain: 'your-frontend-domain'
#   else
#     Rails.application.config.session_store :cookie_store, key: '_your-app-name' 
# end


Rails.application.config.session_store :cookie_store, key: "_modern_family_app"

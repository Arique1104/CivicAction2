Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['612595847977-r76imr6kc44kn9jl9dsf763gitledgnn.apps.googleusercontent.com'], ENV['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']
  # provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end

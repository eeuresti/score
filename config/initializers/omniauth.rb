# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, "165507163796561", "6f13acbbf035bcab85a7ddbbe8d3e56b", { :scope => 'user_location, user_birthday, user_about_me, email'}
# end

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, "165507163796561", "6f13acbbf035bcab85a7ddbbe8d3e56b", scope: 'email,public_profile,user_birthday,user_location,user_about_me', info_fields: 'email,name,gender,birthday,location,bio'
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], { :scope => 'user_location, user_birthday, user_about_me, email'}
end

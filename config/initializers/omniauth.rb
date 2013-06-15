Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '2iLf6589EdKVQlD7IbmSDg', 'u26PaScjdpBrCSWCpEfrbcgx2GMzMWriizPzQw63TwM'
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  provider :facebook, '504392752961786', '7b380381f4c54f599594584e90e676ef'
end

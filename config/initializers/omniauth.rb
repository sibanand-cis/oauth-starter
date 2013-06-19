Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '2iLf6589EdKVQlD7IbmSDg', 'u26PaScjdpBrCSWCpEfrbcgx2GMzMWriizPzQw63TwM'
  provider :github, 'b18c4b8f689e68bf67e5', '1b715114d8934a1f087545c301264642b6b41a0f'
  provider :facebook, '504392752961786', '7b380381f4c54f599594584e90e676ef'
end

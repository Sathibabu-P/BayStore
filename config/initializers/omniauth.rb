Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,"197590823023-9t821mcovg3nuh21t10dggubdk3lk21t.apps.googleusercontent.com","uCctkEqh1vPbw01Wy_6MdM0x",
    {
      :name => "google",
      :scope => "email, profile",
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50
    }
end

# provider :google_oauth2,ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
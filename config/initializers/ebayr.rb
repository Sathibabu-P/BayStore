require 'ebayr'

Ebayr.dev_id = "cc50f0f9-9bb8-4372-8f1a-bae887c4678f"

# This is only needed if you want to retrieve user tokens
Ebayr.authorization_callback_url = "https://my-site/callback-url"

Ebayr.auth_token = "myverylongebayauthtoken"

Ebayr.app_id = "sathibab-eBayStor-SBX-32f839347-412aba74"

Ebayr.cert_id = "SBX-2f83934755ae-ffc1-44be-b197-92dd"

Ebayr.ru_name = "my-ebay-ru-name"

# Set this to true for testing in the eBay Sandbox (but remember to use the
# appropriate keys!). It's true by default.
Ebayr.sandbox = true
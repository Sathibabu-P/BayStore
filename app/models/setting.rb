class Setting < ApplicationRecord
	belongs_to :store
	validates :app_id,:dev_id,:site_id,:run_name,:cert_id,:user_token, presence: true
end

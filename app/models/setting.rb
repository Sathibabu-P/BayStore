class Setting < ApplicationRecord
	belongs_to :store
	validates :app_id,:dev_id,:run_name,:cert_id,presence: true
end

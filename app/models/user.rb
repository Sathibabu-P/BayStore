class User < ApplicationRecord
	
	def self.create_with_omniauth(auth)		
	    create! do |user|
	      user.auth = auth,
	      user.provider = auth['provider'],
	      user.uid = auth['uid'],
	      user.name  =  auth['info']['name'],         
          user.email     =   auth['info']['email'],
          user.avatar_url = auth['info']['image']
	    end	   
	end

	 def to_params
	 	Hashids.new("salt").encode(id)
	  end
	
end

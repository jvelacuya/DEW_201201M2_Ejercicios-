class Twet < ActiveRecord::Base

	Twitter.configure do |config|
	  config.consumer_key = 'HjcncUSw1FJq723rwpadQ'
	  config.consumer_secret = 'AIAh0jYvMaUelYugsl50bFwr22QCxS3cIjN619mx8'
	  config.oauth_token = '330733133-OMgma53PmtHShKfLBoP1SPrLRYheEod7DHlsnyXo'
	  config.oauth_token_secret = 'VSkF5BJy4weosgNl57Cfoyz4gCnFlcquSeBBCmIOt5Y'
	end

	def read_message
		
		return "sin user" if self.user.blank?
				
		Twitter.user_timeline(self.user).first.text
	end
	
	def update_status
		Twitter.update(self.message)
	end
	
	def read_text
		return "sin user" if self.status.blank?
		Twitter.status(self.status).text
	end
	
	def follows
		followers = Twitter.follower_ids(self.user,{:cursor=>cursor})
	end	
end

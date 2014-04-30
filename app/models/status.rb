class Status < ActiveRecord::Base
	belongs_to :user #STATUS LINKED TO USER

	validates :content, presence: true,
						length: { minimum: 2 }

	validates :user_id, presence: true
end

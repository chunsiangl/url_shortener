class Url < ApplicationRecord
	validates :long_url, presence: true
	validates :long_url, uniqueness: {case_sensitive: false, message: "was shortened before"}
	validates :long_url, format: {with: (URI::regexp(['http', 'https'])), message: "format is not good"}
end

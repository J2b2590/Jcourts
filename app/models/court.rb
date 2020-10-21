require 'rest-client'
require 'json'



class Court < ApplicationRecord
    has_many :games

    def self.chicago_ball_parks
        response_string = RestClient.get('https://data.cityofchicago.org/resource/y7qa-tvqx.json')
        response_hash = JSON.parse(response_string)

        park = response_hash

        basketball_court = []

        park.each do |park_hash|
            if park_hash["facility_name"] == "BASKETBALL COURT"
                basketball_court << park_hash["park"]
            end
        end

        basketball_court.uniq
    
    end
end

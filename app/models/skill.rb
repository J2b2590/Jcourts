class Skill < ApplicationRecord
    belongs_to :player_skill, :foreign_key => 'skill_id', optional: true
end

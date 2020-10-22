class PlayerSkill < ApplicationRecord

    belongs_to :player, :class_name => "User"
    belongs_to :skill

    # validates :skill_id, presence: true, :uniqueness => 
    # { :scope => :skill_id, message: " is already added to player" }

    # validates :level, numericality: { greater_than: 0, less_than_or_equal_to 10}

end

class AddMoreAttributesToPlayerSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :player_skills, :level, :integer
  end
end

class CreatePlayerSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :player_skills do |t|
      t.integer :player_id
      t.integer :skill_id

      t.timestamps
    end
  end
end

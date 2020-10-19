class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :host_id
      t.integer :court_id
      t.string :date
      t.integer :time
      t.integer :player_count

      t.timestamps
    end
  end
end

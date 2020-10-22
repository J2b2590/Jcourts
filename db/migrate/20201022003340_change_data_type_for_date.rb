class ChangeDataTypeForDate < ActiveRecord::Migration[6.0]
  def self.up
    change_table :games do |t|
      t.change :date, :date
    end
  end

  def self.down
    change_table :games do |t|
      t.change :date, :string
    end
  end
  
end

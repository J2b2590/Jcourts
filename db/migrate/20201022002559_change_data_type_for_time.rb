class ChangeDataTypeForTime < ActiveRecord::Migration[6.0]
  def self.up
    change_table :games do |t|
      t.change :time, :time
    end
  end
  def self.down
    change_table :games do |t|
      t.change :time, :integer
    end
  end
end

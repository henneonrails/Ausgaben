class CreateHaushalts < ActiveRecord::Migration
  def self.up
    create_table :haushalts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :haushalts
  end
end

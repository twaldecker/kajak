class DropFlusscreateWater < ActiveRecord::Migration
  def self.up
    
    drop_table :flusses
    
    create_table :waters do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    
  end

  def self.down
    
    create_table :flusses do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
    
    drop_table :waters
  end
end

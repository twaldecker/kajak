class CreateFlusses < ActiveRecord::Migration
  def self.up
    create_table :flusses do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :flusses
  end
end

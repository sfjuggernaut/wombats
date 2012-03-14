class CreateWombats < ActiveRecord::Migration
  def self.up
    create_table :wombats do |t|
      t.string :name
      t.string :image
      t.timestamps
    end
  end

  def self.down
    drop_table :wombats
  end
end
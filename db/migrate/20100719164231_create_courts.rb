class CreateCourts < ActiveRecord::Migration
  def self.up
    create_table :courts do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :courts
  end
end

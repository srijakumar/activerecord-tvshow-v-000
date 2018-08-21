class CreateShows < ActiveRecord::Migration
def change
  create_table :shows do |t|
    t.string :name
    t.string :network
    t.string :day
    t.integer :rating
    t.season :string
  end
end
end

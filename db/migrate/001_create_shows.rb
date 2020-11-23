class CreateShows < ActiveRecord::Migration[5.2]
    def up
    end

    def down
    end

    def change
        create_table :shows do |t|
            t.string :name
            t.string :network
            t.string :day
            t.integer :rating
        end 
    end
end
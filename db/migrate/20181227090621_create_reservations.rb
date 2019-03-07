class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.integer :nbperson
      t.date :date
      t.time :hour
      t.timestamps 
    end
  end
end

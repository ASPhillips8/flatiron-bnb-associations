class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :checkin
      t.string :checkout
      t.references :guest, foreign_key: true
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end

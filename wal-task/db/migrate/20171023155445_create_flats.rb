class CreateFlats < ActiveRecord::Migration[5.1]
  def change
    create_table :flats do |t|
      t.integer :agreement_amount, :limit => 8
      t.date :date_of_booking
      t.integer :base_price, :limit => 8
      t.integer :area, :limit => 8

      t.timestamps
    end
  end
end

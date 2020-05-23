class CreateSeatBookeds < ActiveRecord::Migration[5.1]
  def change
    create_table :seat_bookeds do |t|
    	t.integer :row
		t.integer :column
	    t.string :status
        t.timestamps
    end
  end
end

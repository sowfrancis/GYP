class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :name
    	t.string :venue
    	t.string :description
    	t.string :address
      t.datetime :event_date
      t.string :hour
      t.integer :cost
      t.integer :places
    	t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end

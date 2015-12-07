class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :body
      t.belongs_to :event, index: true
      t.belongs_to :user, index: true
    	
      t.timestamps null: false
    end
  end
end

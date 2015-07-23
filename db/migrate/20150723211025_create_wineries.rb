class CreateWineries < ActiveRecord::Migration
  def change
    create_table :wineries do |t|
      t.string :name
      t.string :location
      t.string :website
      t.string :image
      t.string :phone_number
      t.boolean :visitors
      t.boolean :tours
      t.boolean :pets

      t.timestamps null: false
    end
  end
end

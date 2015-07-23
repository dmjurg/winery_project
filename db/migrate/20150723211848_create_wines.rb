class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :varietal

      t.timestamps null: false
    end
  end
end

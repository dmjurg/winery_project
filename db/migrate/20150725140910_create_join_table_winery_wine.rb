class CreateJoinTableWineryWine < ActiveRecord::Migration
  def change
    create_join_table :wineries, :wines do |t|
      # t.index [:winery_id, :wine_id]
      # t.index [:wine_id, :winery_id]
    end
  end
end

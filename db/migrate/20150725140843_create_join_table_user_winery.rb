class CreateJoinTableUserWinery < ActiveRecord::Migration
  def change
    create_join_table :users, :wineries do |t|
      # t.index [:user_id, :winery_id]
      # t.index [:winery_id, :user_id]
    end
  end
end

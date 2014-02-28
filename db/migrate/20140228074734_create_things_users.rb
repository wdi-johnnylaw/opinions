class CreateThingsUsers < ActiveRecord::Migration
  def change
    create_table :things_users, id: false do |t|
      t.references :user, index: true
      t.references :thing, index: true
    end

    add_index :things_users, [:user_id, :thing_id]
  end
end

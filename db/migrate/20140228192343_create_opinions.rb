class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.references :user, index: true
      t.references :thing, index: true
      t.text :comment
      t.decimal :rating

      t.timestamps
    end
  end
end

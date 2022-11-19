class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :name, null: false
      t.integer :maker_id, null: false
      t.string :country, null: false

      t.timestamps
    end

    add_index :bikes, :maker_id
  end
end

class CreateMakers < ActiveRecord::Migration[7.0]
  def change
    create_table :makers do |t|
      t.string :name, null: false
      t.string :country, null: false

      t.timestamps
    end

    add_index :makers, :country
  end
end

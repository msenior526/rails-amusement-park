class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.references :user, foreign_key: {on_delete: :cascade}
      t.references :attraction, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end

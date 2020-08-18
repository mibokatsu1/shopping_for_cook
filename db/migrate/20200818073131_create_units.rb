class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :unit, null: false
      t.references :ingredient, foreign_key: true
      t.timestamps
    end
  end
end

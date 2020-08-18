class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :amount, null: false
      t.references :ingredient, foreign_key: true
      t.references :menu, foreign_key: true
      # t.references :ingredient, type: :bigint, foreign_key: true
      # t.references :menu, type: :bigint, foreign_key: true
      t.timestamps
    end
  end
end

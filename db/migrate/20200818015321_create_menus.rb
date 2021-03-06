class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :menu_name, null: false
      t.index :menu_name, unique: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

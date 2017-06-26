class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :menu
      t.string :restaurant

      t.timestamps
    end
  end
end

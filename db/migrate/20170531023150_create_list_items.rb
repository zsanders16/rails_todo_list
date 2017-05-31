class CreateListItems < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.string :title, null: false
      t.string :description

      t.timestamps
    end
  end
end

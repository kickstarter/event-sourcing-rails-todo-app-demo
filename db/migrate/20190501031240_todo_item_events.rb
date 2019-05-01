class TodoItemEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_item_events do |t|
      t.string :type, null: false
      t.integer :todo_item_id, null: false

      t.text :data, null: false
      t.text :metadata, null: false
      t.datetime :created_at, null: false

      t.index :todo_item_id
    end
  end
end

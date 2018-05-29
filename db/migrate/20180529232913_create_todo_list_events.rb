class CreateTodoListEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_list_events do |t|
      t.string :type, null: false
      t.integer :todo_list_id, null: false

      t.text :data, null: false
      t.text :metadata, null: false
      t.datetime :created_at, null: false

      t.index :todo_list_id
    end
  end
end

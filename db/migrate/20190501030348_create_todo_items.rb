class CreateTodoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_items do |t|
      t.integer :todo_list_id, null: false
      t.string :name, null: false
      t.datetime :due_date
      t.boolean :completed
      t.timestamps null: false
    end
  end
end

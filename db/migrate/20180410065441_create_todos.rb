class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string  :task_name
      t.text    :detail
      t.integer :importance
      t.string  :dead_line
      t.timestamps
    end
  end
end

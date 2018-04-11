class TodosController < ApplicationController

  def sort
    todo = Todo.find(paramss[:todo_id])
    todo.update(todo_params)
    render nothing: true
  end

  def index
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :row_order_position)
  end
end

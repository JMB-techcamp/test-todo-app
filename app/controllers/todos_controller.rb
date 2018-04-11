class TodosController < ApplicationController
# this action will be called via ajax
  def sort
    todo = Todo.find(paramss[:todo_id])
    todo.update(todo_params)
    render nothing: true
  end

  def index
    @todos = Todo.rank(:row_order)
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :row_order_position)
  end
end

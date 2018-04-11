class Todo < ActiveRecord::Base
  include RankedModel
  ranks :row_order

  def index
    @todos = Todo.rank(:row_order)
  end
end

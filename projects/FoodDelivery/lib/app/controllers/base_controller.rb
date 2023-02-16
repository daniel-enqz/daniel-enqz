class BaseController
  require 'pry-byebug'

  def list
    all = @repository.all
    @view.display(all)
  end

  def delete
    list
    index = @view.ask_for_index
    @repository.remove(index)
    list
  end

  def edit
    list
    index = @view.ask_for_index
    new_name = @view.ask_for('new name?')
    new_price = @view.ask_for('new price?').to_i
    new_meal = Meal.new(name: new_name, price: new_price)
    @repository.create(new_meal)
    @repository.remove(index)
  end
end

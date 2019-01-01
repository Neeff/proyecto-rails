class PayController < ApplicationController
  def pay
  	@order_items = current_order.order_items
  	@naves =Nave.all
  	@empleados = Empleado.all
  end
end

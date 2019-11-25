class GadgetsController < ApplicationController
  def show
    @gadget = Gadgets.find(params[:id])
  end
end

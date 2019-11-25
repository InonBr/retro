class GadgetsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action only: %i[new]
  def show
    @gadget = Gadget.find(params[:id])
    authorize @gadget
  end

  def index
    @gadgets = policy_scope(Gadget)
  end

  def new
  end

  def create
    @gadget = Gadget.new(gadget_params)

    if @gadget.save
      redirect_to(@gadget)
    else
      render :new
    end
  end

  private

  def generate_gadget
    @gadget = Gadget.new
  end

  def gadget_params
    params.require(:gadget).permit(
      :name, :price, :image,
      :year, :condition, :description
    )
  end
end

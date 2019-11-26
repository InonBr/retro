class GadgetsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :generate_gadget, only: %i[new]

  def show
    @gadget = Gadget.find(params[:id])
    authorize @gadget
  end

  def index

    if params[:category].present?
      @gadgets = policy_scope(Gadget).where(category: params[:category])
    else
      @gadgets = policy_scope(Gadget)
    end
  end

  def new
    authorize @gadget
  end

  def create
    @gadget = Gadget.new(gadget_params)
    @gadget.user = current_user

    if @gadget.save
      redirect_to gadget_path(@gadget)
    else
      render :new
    end
    authorize @gadget
  end

  private

  def generate_gadget
    @gadget = Gadget.new
  end

  def gadget_params
    params.require(:gadget).permit(
      :name, :price, :image, :year, :category,
      :condition, :description, :address
    )
  end
end

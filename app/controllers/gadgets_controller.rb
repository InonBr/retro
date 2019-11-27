class GadgetsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :generate_gadget, only: %i[new]
  before_action :params_id, only: %i[edit update destroy]

  def show
    @gadget = Gadget.find(params[:id])

    if @gadget.latitude && @gadget.longitude
      @marker = {
        lat: @gadget.latitude,
        lng: @gadget.longitude,
        infoWindow: render_to_string(
          partial: "info_window",
          locals: { gadget: @gadget }
        ),
        image_url: helpers.asset_url('https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/samsung/220/electric-light-bulb_1f4a1.png')
      }
    else
      @marker = {
        lat: 32.0853,
        lng: 34.7818,
        infoWindow: render_to_string(
          partial: "info_window",
          locals: { gadget: @gadget }
        ),
        image_url: helpers.asset_url('https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/samsung/220/electric-light-bulb_1f4a1.png')
      }
    end

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

  def edit
    authorize @gadget
  end

  def update
    authorize @gadget
    if @gadget.update(gadget_params)
      redirect_to gadget_path(@gadget)
    else
      render :edit
    end
  end

  def destroy
    authorize @gadget
    @gadget.destroy
  end

  private

  def generate_gadget
    @gadget = Gadget.new
  end

  def params_id
    @gadget = Gadget.find(params[:id])
  end

  def gadget_params
    params.require(:gadget).permit(
      :name, :price, :image, :year, :category,
      :condition, :description, :address
    )
  end
end

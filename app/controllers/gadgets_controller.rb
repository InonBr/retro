class GadgetsController < ApplicationController
  skip_before_action :authenticate_user!
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
end

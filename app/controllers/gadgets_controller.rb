class GadgetsController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @gadget = Gadget.find(params[:id])
    authorize @gadget
  end

  def index
    @gadgets = policy_scope(Gadget)
  end
end

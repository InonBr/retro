class GadgetsController < ApplicationController
  def show
    @gadget = Gadget.find(params[:id])
  end
  skip_before_action :authenticate_user!

  def index
    @gadgets = policy_scope(Gadget)
  end
end

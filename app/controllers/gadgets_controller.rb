class GadgetsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @gadgets = policy_scope(Gadget)
  end
end

class HomeController < ApplicationController
  def index
    @capsules = Capsule.all.sample 6
    @charities = Charity.all.sample 3
    @kits = Kit.all.sample 3

   # @capsules = Capsule.order(created_at: :desc).limit(6)

  end



end

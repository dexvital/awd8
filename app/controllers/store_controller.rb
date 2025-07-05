class StoreController < ApplicationController
  allow_unauthenticated_access

  include CurrentCart
  before_action :set_cart

  def index
    return redirect_to store_index_url(locale: params[:set_locale]) if params[:set_locale]

    @products = Product.order(:title)
  end
end

class StoreController < ApplicationController
  include CounterStore
  include CurrentCart
  before_action :set_counter, only: [:index]
  before_action :set_cart

  def index
    @products = Product.order(:title) # alphabetical order
  end
end

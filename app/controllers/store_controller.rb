class StoreController < ApplicationController
  include CounterStore
  before_action :set_counter, only: [:index]
  
  def index
    @products = Product.order(:title) # alphabetical order
  end
end

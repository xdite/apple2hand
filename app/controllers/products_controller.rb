class ProductsController < ApplicationController

  before_filter :login_required, :only => [:new,:create,:edit,:update,:destroy]

  def new
    @product = current.products.build
  end
  
end

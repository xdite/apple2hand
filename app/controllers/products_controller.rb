class ProductsController < ApplicationController

  before_filter :login_required, :only => [:new,:create,:edit,:update,:destroy]

  def new
    @product = current_user.products.build
  end


  def create
    @product = current_user.products.build(params[:product])
    if @product.save
      redirect_to product_pat(@product)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = current_user.products.find(params[:id])

  end

  def update
    @product = current_user.products.find(params[:id])
    if product.update_attribute(params[:product])
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def index
    @products = Product.paginate( :page => params[:page], :per_page => 15 )
  end

end

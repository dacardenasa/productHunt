class ProductsController < ApplicationController
  # Use it to control access to al pages in controller except index and show
  # create private_access method
  before_action :private_access, except: [:index, :show]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_score)
    @product.user = current_user
    if @product.save
      redirect_to products_path, notice: "El producto fue creado con éxito"
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    if product.update(product_score)
      redirect_to products_path, notice: "Producto ha sido modificado con éxito"
    else
      render :edit
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy

    redirect_to products_path,  notice: "El producto fue eliminado con éxito"
  end

  private
    def product_score
      params.require(:product).permit(:name, :url, :description, :image)
    end

end

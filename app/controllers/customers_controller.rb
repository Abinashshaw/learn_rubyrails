class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.order(:name).search(params[:search])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = "Customer record created successfully"
      redirect_to customer_path(@customer)
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      flash[:notice] = "Customer is updated successfully"
      redirect_to customer_path(@customer)
    else
      render "edit"
    end
  end

  def destroy
    @customer.destroy
    flash[:notice] = "Customer is deleted successfully"
    redirect_to customers_path
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:name, :email, :search)
    end
end
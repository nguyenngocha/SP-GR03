class AddressListsController < ApplicationController
  before_action :logged_in_user

  def new
    @user = current_user
    @address_list = AddressList.new
  end
  
  def index
    @user = current_user
  end

  def create

  end

  def edit
    @user = current_user
  end

  def update
  end

  def destroy
  end

  private
    def address_params
      params.require(:address_list).permit(:address, :phone_number, :ward_id)
    end
end

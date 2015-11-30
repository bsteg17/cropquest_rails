class EquipmentItemsController < ApplicationController
  before_action :set_equipment_item, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  respond_to :html

  def index
    @equipment_items = current_user.equipment_items
    respond_with(@equipment_items)
  end

  def show
    respond_with(@equipment_item)
  end

  def new
    @equipment_item = EquipmentItem.new
    respond_with(@equipment_item)
  end

  def edit
  end

  def create
    current_user.equipment_items.create(equipment_item_params.permit(:name, :serial, :purchase_date, :comments, :equipment_type_id))
    current_user.save
    redirect_to equipment_items_path
  end

  def update
    current_user.equipment_items.update(params[:id], equipment_item_params.permit(:name, :serial, :purhase_date, :comments))
    current_user.save
    redirect_to equipment_items_path
  end

  def destroy
    @equipment_item.destroy
    respond_with(@equipment_item)
  end

  private
    def set_equipment_item
      @equipment_item = EquipmentItem.find(params[:id])
    end

    def equipment_item_params
      params[:equipment_item]
    end
end

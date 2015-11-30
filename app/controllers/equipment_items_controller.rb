class EquipmentItemsController < ApplicationController
  before_action :set_equipment_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @equipment_items = EquipmentItem.all
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
    @equipment_item = EquipmentItem.new(equipment_item_params)
    @equipment_item.save
    respond_with(@equipment_item)
  end

  def update
    @equipment_item.update(equipment_item_params)
    respond_with(@equipment_item)
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

class EquipmentTypesController < ApplicationController
  before_action :set_equipment_type, only: [:show]

  respond_to :html

  def show
    respond_with(@equipment_type)
  end
 
  private
    def set_equipment_type
      @equipment_type = EquipmentType.find(params[:id])
    end

    def equipment_type_params
      params[:equipment_item]
    end

end

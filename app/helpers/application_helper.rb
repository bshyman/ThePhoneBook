module ApplicationHelper
  def phone_models_for_select
    {
        'iPhone X':      :iphone_x,
        'iPhone 8 Plus': :iphone_8_plus,
        'iPhone XR':     :iphone_xr
    }
  end
  
  def phone_capacities_for_select
    {
        '16gb' =>16,
        '64gb' =>64,
        '128gb'=>128
    }
  end
  
  def carriers_for_select
    {
        Verizon: :vzw,
        Sprint:  :sprint,
        GSM:     :gsm,
        ATT:     :att
      
    }
  end
  
  def colors_for_select
    {
        Black:    :black,
        'White':  :white,
        'Silver': :silver
    }
  end
end

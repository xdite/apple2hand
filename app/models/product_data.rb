# -*- encoding : utf-8 -*-
class ProductData < Settingslogic
  source "#{Rails.root}/config/product_data.yml"
  namespace Rails.env
end

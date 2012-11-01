# -*- encoding : utf-8 -*-
class AreaData < Settingslogic
  source "#{Rails.root}/config/area_data.yml"
  namespace Rails.env
end

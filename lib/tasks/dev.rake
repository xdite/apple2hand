# -*- encoding : utf-8 -*-
require 'lorem_helper'

namespace :dev do


  include LoremHelper

  desc "Rebuild system"
  task :build => ["tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate", "db:seed"]


  desc "fake data"
  task :fake => :environment do

  end

end

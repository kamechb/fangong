module Refinery
  module Fg
    module Admin
      class ReportsController < ::Refinery::AdminController

        crudify :'refinery/fg/report', :xhr_paging => true

      end
    end
  end
end

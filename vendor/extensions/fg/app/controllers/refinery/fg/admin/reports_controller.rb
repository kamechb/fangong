module Refinery
  module Fg
    module Admin
      class ReportsController < ::Refinery::AdminController

        crudify :'refinery/fg/report', 
                :title_attribute => 'user_name', 
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end

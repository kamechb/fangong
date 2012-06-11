module Refinery
  module Fg
    module Admin
      class ReportsController < ::Refinery::AdminController

        crudify :'refinery/fg/report', 
                :title_attribute => 'title', 
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end

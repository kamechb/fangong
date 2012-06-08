module Refinery
  module Fg
    module Admin
      class ActivitiesController < ::Refinery::AdminController

        crudify :'refinery/fg/activity',
                :title_attribute => 'desc', 
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end

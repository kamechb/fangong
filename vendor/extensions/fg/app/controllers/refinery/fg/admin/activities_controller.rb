module Refinery
  module Fg
    module Admin
      class ActivitiesController < ::Refinery::AdminController

        crudify :'refinery/fg/activity',
                :title_attribute => 'title', 
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end

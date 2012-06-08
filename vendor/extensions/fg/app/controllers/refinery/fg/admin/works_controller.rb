module Refinery
  module Fg
    module Admin
      class WorksController < ::Refinery::AdminController

        crudify :'refinery/fg/work',
                :title_attribute => 'name', 
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end

module Refinery
  module Fg
    module Admin
      class JobsController < ::Refinery::AdminController

        crudify :'refinery/fg/job',
                :title_attribute => 'name', 
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end

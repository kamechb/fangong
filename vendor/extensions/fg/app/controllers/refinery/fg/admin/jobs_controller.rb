module Refinery
  module Fg
    module Admin
      class JobsController < ::Refinery::AdminController

        crudify :'refinery/fg/job',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
